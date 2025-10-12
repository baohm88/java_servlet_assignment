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

    // ✅ Replace switch expression with classic switch-case
    String category;
    switch ((int) nft.getCategoryId()) {
        case 1:
            category = "Digital Art";
            break;
        case 2:
            category = "Music";
            break;
        case 3:
            category = "Video";
            break;
        case 4:
            category = "GIF";
            break;
        case 5:
            category = "3D Model";
            break;
        default:
            category = "Unknown";
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
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="/nft/list">NFT Market</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a href="/nft/list" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="/nft/create" class="nav-link">Create NFT</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- NFT Detail -->
<div class="container mt-5">
    <a href="/nft/list" class="btn btn-secondary">← Back to List</a>
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
                <button class="btn btn-danger" onclick="confirmDelete(<%= nft.getId() %>, this)">Delete</button>
            </div>
        </div>
    </div>
</div>


<script>
    function confirmDelete(id, btn) {
        if (!confirm("Are you sure to delete this NFT?")) return;
        fetch('/nft/delete', {
            method: 'POST',
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            body: 'id=' + id
        })
            .then(res => {
                if (res.ok) {
                    btn.closest('.col').remove();
                } else {
                    alert("Failed to delete NFT. Code: " + res.status);
                }
            })
            .catch(err => alert("Error: " + err));
    }
</script>
</body>
</html>
