<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.t2404e.nft.entity.NFT" %>

<%
    NFT nft = (NFT) request.getAttribute("nft");
    if (nft == null) {
%>
<h3 class="text-center text-danger mt-5">NFT not found</h3>
<%
        return;
    }

    String category;
    switch ((int) nft.getCategoryId()) {
        case 1: category = "Digital Art"; break;
        case 2: category = "Music"; break;
        case 3: category = "Video"; break;
        case 4: category = "GIF"; break;
        case 5: category = "3D Model"; break;
        default: category = "Unknown";
    }

    String statusText;
    String statusColor;
    if (nft.getStatus() == 1) {
        statusText = "Active";
        statusColor = "text-success";
    } else if (nft.getStatus() == 0) {
        statusText = "Inactive";
        statusColor = "text-warning";
    } else {
        statusText = "Deleted";
        statusColor = "text-danger";
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= nft.getName() %> | NFT Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; font-family: "Segoe UI", sans-serif; }

        .nft-card {
            max-width: 850px;
            margin: 40px auto;
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
            overflow: hidden;
        }
        .nft-img {
            width: 100%;
            max-height: 480px;
            object-fit: cover;
            border-bottom: 1px solid #ddd;
        }
        .nft-body { padding: 30px; }
        .nft-desc { margin-top: 15px; }

        /* Toast container (top-right) */
        #alertContainer {
            position: fixed;
            top: 1rem;
            right: 1rem;
            z-index: 2000;
            display: flex;
            flex-direction: column;
            gap: 10px;
            align-items: flex-end;
        }
        @keyframes slideFadeDown {
            0% { transform: translateY(-20px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }
        .alert-animated { animation: slideFadeDown 0.4s ease-out forwards; }
        .alert {
            border-radius: 10px !important;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            font-weight: 500;
            padding: 0.8rem 1rem;
            display: flex;
            align-items: center;
            border-left: 5px solid transparent;
            min-width: 300px;
            background-color: #fff;
            color: #333;
        }
        .alert-success { border-left-color: #198754; background: #d1e7dd; color: #0f5132; }
        .alert-danger  { border-left-color: #dc3545; background: #f8d7da; color: #842029; }
        .alert-warning { border-left-color: #ffc107; background: #fff3cd; color: #664d03; }
        .alert-info    { border-left-color: #0dcaf0; background: #cff4fc; color: #055160; }
        .alert .btn-close { margin-left: 12px; filter: brightness(0.4); }
    </style>
</head>
<body>

<!-- Navbar -->
<jsp:include page="/navbar.jsp" />

<!-- NFT Detail -->
<div class="container mt-5">
    <a href="/nft/list" class="btn btn-secondary mb-3">← Back to List</a>
    <div class="nft-card">
        <img src="<%= nft.getImageUrl() %>" alt="<%= nft.getName() %>" class="nft-img">
        <div class="nft-body">
            <h2 class="text-primary fw-bold"><%= nft.getName() %></h2>
            <p class="text-muted mb-2"><strong>Category:</strong> <%= category %></p>
            <p><strong>Price:</strong> $<%= nft.getPrice() %></p>
            <p><strong>Creator:</strong> <%= nft.getCreator() %></p>
            <p><strong>Wallet Address:</strong> <code><%= nft.getWalletAddress() %></code></p>
            <p><strong>Status:</strong> <span class="<%= statusColor %>"><%= statusText %></span></p>

            <hr>
            <h5 class="fw-semibold mt-3">Description:</h5>
            <div class="nft-desc border rounded p-3" style="background:#fafafa;">
                <%= nft.getDescription() %>
            </div>

            <div class="text-end mt-4">
                <a href="/nft/edit?id=<%= nft.getId() %>" class="btn btn-warning text-white me-2">Edit</a>
                <button class="btn btn-danger" onclick="openDeleteModal(<%= nft.getId() %>, '<%= nft.getName().replace("'", "\\'") %>')">Delete</button>
            </div>
        </div>
    </div>
</div>

<!-- Toast container -->
<div id="alertContainer"></div>

<!-- Confirm Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0 shadow">
            <div class="modal-header bg-danger text-white">
                <h5 class="modal-title">Confirm Delete</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete this NFT?</p>
                <p class="fw-semibold text-danger" id="nftNamePreview"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger" id="confirmDeleteBtn">Yes, Delete</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));
        const nftNamePreview = document.getElementById('nftNamePreview');
        const confirmBtn = document.getElementById('confirmDeleteBtn');
        const nftId = <%= nft.getId() %>;

        // Toast function
        function showAlert(type = "info", message = "") {
            if (!message) return;
            const container = document.getElementById('alertContainer');
            const alert = document.createElement("div");
            const icons = { success: "✅", error: "❌", warning: "⚠️", info: "ℹ️" };
            const colorMap = {
                success: "alert-success",
                error: "alert-danger",
                warning: "alert-warning",
                info: "alert-info"
            };
            alert.className = `alert ${colorMap[type] || 'alert-secondary'} alert-dismissible fade show shadow alert-animated`;

            const iconSpan = document.createElement("span");
            iconSpan.textContent = icons[type] || "🔔";
            iconSpan.style.fontSize = "1.2em";
            iconSpan.style.marginRight = "8px";

            const msgSpan = document.createElement("span");
            msgSpan.textContent = message;
            msgSpan.style.flexGrow = "1";

            const closeBtn = document.createElement("button");
            closeBtn.type = "button";
            closeBtn.className = "btn-close";
            closeBtn.setAttribute("data-bs-dismiss", "alert");

            alert.appendChild(iconSpan);
            alert.appendChild(msgSpan);
            alert.appendChild(closeBtn);
            container.appendChild(alert);

            setTimeout(() => {
                alert.classList.remove("show");
                setTimeout(() => alert.remove(), 400);
            }, 4000);
        }

        // Modal open
        window.openDeleteModal = (id, name) => {
            nftNamePreview.textContent = name;
            deleteModal.show();
        };

        // Confirm delete
        confirmBtn.addEventListener("click", () => {
            fetch("/nft/delete", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: "id=" + nftId
            })
                .then(async res => {
                    const text = await res.text();
                    if (res.ok) {
                        deleteModal.hide();
                        showAlert("success", text || "NFT deleted successfully!");
                        setTimeout(() => window.location.href = "/nft/list", 1500);
                    } else {
                        showAlert("error", text || "Failed to delete NFT (code " + res.status + ")");
                    }
                })
                .catch(err => showAlert("error", "Network error: " + err.message));
        });
    });
</script>

</body>
</html>
