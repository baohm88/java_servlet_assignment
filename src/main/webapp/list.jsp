<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="com.t2404e.nft.entity.NFT" %>--%>

<%--<%--%>
<%--    List<NFT> nftList = (List<NFT>) request.getAttribute("nftList");--%>
<%--    int currentPage = (int) request.getAttribute("currentPage");--%>
<%--    int totalPages = (int) request.getAttribute("totalPages");--%>
<%--    int limit = (int) request.getAttribute("limit");--%>
<%--    int totalItems = (int) request.getAttribute("totalItems");--%>

<%--    String search = request.getParameter("search") != null ? request.getParameter("search") : "";--%>
<%--    String categoryId = request.getParameter("categoryId") != null ? request.getParameter("categoryId") : "";--%>
<%--    String sort = request.getParameter("sort") != null ? request.getParameter("sort") : "";--%>

<%--    boolean isEmptyList = (nftList == null || nftList.isEmpty());--%>
<%--%>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>NFT Marketplace</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">--%>

<%--    <style>--%>
<%--        body {--%>
<%--            background-color: #f8f9fa;--%>
<%--            font-family: "Segoe UI", sans-serif;--%>
<%--        }--%>
<%--        .nft-card {--%>
<%--            border: none;--%>
<%--            border-radius: 14px;--%>
<%--            overflow: hidden;--%>
<%--            background: #fff;--%>
<%--            box-shadow: 0 2px 10px rgba(0,0,0,0.08);--%>
<%--            transition: all 0.25s ease-in-out;--%>
<%--            position: relative;--%>
<%--            cursor: pointer;--%>
<%--        }--%>
<%--        .nft-card:hover {--%>
<%--            transform: translateY(-5px);--%>
<%--            box-shadow: 0 8px 20px rgba(0,0,0,0.15);--%>
<%--        }--%>
<%--        .nft-card img {--%>
<%--            height: 220px;--%>
<%--            width: 100%;--%>
<%--            object-fit: cover;--%>
<%--            border-bottom: 1px solid #eee;--%>
<%--            transition: transform 0.4s ease, opacity 0.3s ease;--%>
<%--        }--%>
<%--        .nft-card:hover img {--%>
<%--            transform: scale(1.05);--%>
<%--            opacity: 0.95;--%>
<%--        }--%>
<%--        .filter-bar {--%>
<%--            background: #fff;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 2px 8px rgba(0,0,0,0.05);--%>
<%--            padding: 15px;--%>
<%--            margin-bottom: 1.5rem;--%>
<%--        }--%>

<%--        /* Toast container (top-right) */--%>
<%--        #alertContainer {--%>
<%--            position: fixed;--%>
<%--            top: 1rem;--%>
<%--            right: 1rem;--%>
<%--            z-index: 2000;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            gap: 10px;--%>
<%--            align-items: flex-end;--%>
<%--        }--%>

<%--        @keyframes slideFadeDown {--%>
<%--            0% { transform: translateY(-20px); opacity: 0; }--%>
<%--            100% { transform: translateY(0); opacity: 1; }--%>
<%--        }--%>

<%--        .alert-animated { animation: slideFadeDown 0.4s ease-out forwards; }--%>

<%--        .alert {--%>
<%--            border-radius: 10px !important;--%>
<%--            box-shadow: 0 4px 15px rgba(0,0,0,0.15);--%>
<%--            font-weight: 500;--%>
<%--            padding: 0.8rem 1rem;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            border-left: 5px solid transparent;--%>
<%--            min-width: 300px;--%>
<%--            background-color: #fff;--%>
<%--            color: #333;--%>
<%--        }--%>
<%--        .alert-success { border-left-color: #198754; background: #d1e7dd; color: #0f5132; }--%>
<%--        .alert-danger  { border-left-color: #dc3545; background: #f8d7da; color: #842029; }--%>
<%--        .alert-warning { border-left-color: #ffc107; background: #fff3cd; color: #664d03; }--%>
<%--        .alert-info    { border-left-color: #0dcaf0; background: #cff4fc; color: #055160; }--%>
<%--        .alert .btn-close { margin-left: 12px; filter: brightness(0.4); }--%>

<%--        /* invisible full-card link */--%>
<%--        .nft-link {--%>
<%--            position: absolute;--%>
<%--            top: 0; left: 0;--%>
<%--            width: 100%; height: 100%;--%>
<%--            z-index: 1;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!-- Navbar -->--%>
<%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark">--%>
<%--    <div class="container-fluid">--%>
<%--        <a class="navbar-brand fw-bold" href="/nft/list">NFT Market</a>--%>
<%--        <div class="collapse navbar-collapse">--%>
<%--            <ul class="navbar-nav ms-auto">--%>
<%--                <li class="nav-item"><a href="/nft/list" class="nav-link">Home</a></li>--%>
<%--                <li class="nav-item"><a href="/nft/create" class="nav-link">Create NFT</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>

<%--<div class="container my-4">--%>
<%--    <div class="text-center mb-4">--%>
<%--        <h2 class="fw-bold text-primary">🎨 NFT Marketplace</h2>--%>
<%--        <p class="text-muted">Explore, trade, and manage your digital collectibles</p>--%>
<%--    </div>--%>

<%--    <!-- Filter bar -->--%>
<%--    <form class="row g-2 align-items-center filter-bar" method="get" action="/nft/list" id="filterForm">--%>
<%--        <div class="col-md-3">--%>
<%--            <input type="text" class="form-control" name="search" placeholder="Search by name..." value="<%= search %>">--%>
<%--        </div>--%>
<%--        <div class="col-md-2">--%>
<%--            <select name="categoryId" class="form-select">--%>
<%--                <option value="">All Categories</option>--%>
<%--                <option value="1" <%= "1".equals(categoryId)?"selected":"" %>>Digital Art</option>--%>
<%--                <option value="2" <%= "2".equals(categoryId)?"selected":"" %>>Music</option>--%>
<%--                <option value="3" <%= "3".equals(categoryId)?"selected":"" %>>Video</option>--%>
<%--                <option value="4" <%= "4".equals(categoryId)?"selected":"" %>>GIF</option>--%>
<%--                <option value="5" <%= "5".equals(categoryId)?"selected":"" %>>3D Model</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <div class="col-md-2">--%>
<%--            <select name="sort" class="form-select">--%>
<%--                <option value="">Sort by</option>--%>
<%--                <option value="price_asc" <%= "price_asc".equals(sort)?"selected":"" %>>Price ↑</option>--%>
<%--                <option value="price_desc" <%= "price_desc".equals(sort)?"selected":"" %>>Price ↓</option>--%>
<%--                <option value="date_asc" <%= "date_asc".equals(sort)?"selected":"" %>>Oldest</option>--%>
<%--                <option value="date_desc" <%= "date_desc".equals(sort)?"selected":"" %>>Newest</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <div class="col-md-2">--%>
<%--            <select name="limit" class="form-select" onchange="document.getElementById('filterForm').submit()">--%>
<%--                <option value="3" <%= limit==3?"selected":"" %>>3 per page</option>--%>
<%--                <option value="6" <%= limit==6?"selected":"" %>>6 per page</option>--%>
<%--                <option value="9" <%= limit==9?"selected":"" %>>9 per page</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <div class="col-md-3 d-grid">--%>
<%--            <button class="btn btn-primary">Search</button>--%>
<%--        </div>--%>
<%--    </form>--%>

<%--    <!-- NFT Grid -->--%>
<%--    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">--%>
<%--        <% if (nftList != null && !nftList.isEmpty()) {--%>
<%--            for (NFT nft : nftList) {--%>
<%--                String safeName = nft.getName() != null ? nft.getName().replace("'", "\\'") : "";--%>
<%--        %>--%>
<%--        <div class="col">--%>
<%--            <div class="card nft-card h-100 position-relative" onclick="window.location.href='/nft/view?id=<%= nft.getId() %>'">--%>
<%--                <img src="<%= nft.getImageUrl() %>" alt="<%= nft.getName() %>" title="<%= nft.getName() %>">--%>
<%--                <div class="card-body">--%>
<%--                    <h5 class="card-title text-primary fw-semibold mb-2"><%= nft.getName() %></h5>--%>
<%--                    <p class="mb-1"><strong>Price:</strong> $<%= nft.getPrice() %></p>--%>
<%--                    <p class="mb-0 text-muted"><i>By <%= nft.getCreator() %></i></p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <%  } } else { %>--%>
<%--        <div class="col">--%>
<%--            <div class="alert alert-info text-center">--%>
<%--                No NFTs found. <a href="/nft/create" class="alert-link">Create your own NFT here</a>.--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <% } %>--%>
<%--    </div>--%>

<%--    <!-- Pagination -->--%>
<%--    <nav class="mt-5">--%>
<%--        <ul class="pagination justify-content-center">--%>
<%--            <% for (int i = 1; i <= totalPages; i++) { %>--%>
<%--            <li class="page-item <%= (i == currentPage) ? "active" : "" %>">--%>
<%--                <a class="page-link"--%>
<%--                   href="/nft/list?page=<%=i%>&limit=<%=limit%>&search=<%=search%>&categoryId=<%=categoryId%>&sort=<%=sort%>"><%= i %></a>--%>
<%--            </li>--%>
<%--            <% } %>--%>
<%--        </ul>--%>
<%--    </nav>--%>

<%--    <!-- Delete Modal -->--%>
<%--    <div class="modal fade" id="deleteModal" tabindex="-1" aria-hidden="true">--%>
<%--        <div class="modal-dialog modal-dialog-centered">--%>
<%--            <div class="modal-content border-0 shadow">--%>
<%--                <div class="modal-header bg-danger text-white">--%>
<%--                    <h5 class="modal-title">Confirm Delete</h5>--%>
<%--                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>--%>
<%--                </div>--%>
<%--                <div class="modal-body">--%>
<%--                    <p>Are you sure you want to delete this NFT?</p>--%>
<%--                    <p class="fw-semibold text-danger" id="nftNamePreview"></p>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>--%>
<%--                    <button type="button" class="btn btn-danger" id="confirmDeleteBtn">Yes, Delete</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- Toast container -->--%>
<%--<div id="alertContainer"></div>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>--%>

<%--<script>--%>
<%--    document.addEventListener("DOMContentLoaded", () => {--%>
<%--        let selectedNFTId = null;--%>
<%--        let selectedCard = null;--%>
<%--        const deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));--%>
<%--        const nftNamePreview = document.getElementById('nftNamePreview');--%>
<%--        const confirmBtn = document.getElementById('confirmDeleteBtn');--%>

<%--        function showAlert(type = "info", message = "") {--%>
<%--            if (!message) return;--%>

<%--            const container = document.getElementById('alertContainer');--%>
<%--            const alert = document.createElement("div");--%>
<%--            const icons = { success: "✅", error: "❌", warning: "⚠️", info: "ℹ️" };--%>
<%--            const colorMap = {--%>
<%--                success: "alert-success",--%>
<%--                error: "alert-danger",--%>
<%--                warning: "alert-warning",--%>
<%--                info: "alert-info"--%>
<%--            };--%>

<%--            alert.className = `alert ${colorMap[type] || 'alert-secondary'} alert-dismissible fade show shadow alert-animated`;--%>

<%--            const iconSpan = document.createElement("span");--%>
<%--            iconSpan.textContent = icons[type] || "🔔";--%>
<%--            iconSpan.style.fontSize = "1.2em";--%>
<%--            iconSpan.style.marginRight = "8px";--%>

<%--            const msgSpan = document.createElement("span");--%>
<%--            msgSpan.textContent = message;--%>
<%--            msgSpan.style.flexGrow = "1";--%>

<%--            const closeBtn = document.createElement("button");--%>
<%--            closeBtn.type = "button";--%>
<%--            closeBtn.className = "btn-close";--%>
<%--            closeBtn.setAttribute("data-bs-dismiss", "alert");--%>

<%--            alert.appendChild(iconSpan);--%>
<%--            alert.appendChild(msgSpan);--%>
<%--            alert.appendChild(closeBtn);--%>
<%--            container.appendChild(alert);--%>

<%--            setTimeout(() => {--%>
<%--                alert.classList.remove("show");--%>
<%--                setTimeout(() => alert.remove(), 400);--%>
<%--            }, 4000);--%>
<%--        }--%>

<%--        <% if (isEmptyList) { %>--%>
<%--        setTimeout(() => {--%>
<%--            showAlert("info", "No NFTs found. Try creating one!");--%>
<%--        }, 800);--%>
<%--        <% } %>--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.t2404e.nft.entity.NFT" %>

<%
    List<NFT> nftList = (List<NFT>) request.getAttribute("nftList");
    int currentPage = (int) request.getAttribute("currentPage");
    int totalPages = (int) request.getAttribute("totalPages");
    int limit = (int) request.getAttribute("limit");
    int totalItems = (int) request.getAttribute("totalItems");

    String search = request.getParameter("search") != null ? request.getParameter("search") : "";
    String categoryId = request.getParameter("categoryId") != null ? request.getParameter("categoryId") : "";
    String sort = request.getParameter("sort") != null ? request.getParameter("sort") : "";

    boolean isEmptyList = (nftList == null || nftList.isEmpty());
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>NFT Marketplace</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: "Segoe UI", sans-serif;
        }
        .nft-card {
            border: none;
            border-radius: 14px;
            overflow: hidden;
            background: #fff;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            transition: all 0.25s ease-in-out;
            position: relative;
            cursor: pointer;
        }
        .nft-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }
        .nft-card img {
            height: 220px;
            width: 100%;
            object-fit: cover;
            border-bottom: 1px solid #eee;
            transition: transform 0.4s ease, opacity 0.3s ease;
        }
        .nft-card:hover img {
            transform: scale(1.05);
            opacity: 0.95;
        }
        .filter-bar {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
            padding: 15px;
            margin-bottom: 1.5rem;
        }
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

<div class="container my-4">
    <div class="text-center mb-4">
        <h2 class="fw-bold text-primary">🎨 NFT Marketplace</h2>
        <p class="text-muted">Explore, trade, and manage your digital collectibles</p>
    </div>

    <!-- Filter bar -->
    <form class="row g-2 align-items-center filter-bar" method="get" action="/nft/list" id="filterForm">
        <div class="col-md-3">
            <input type="text" class="form-control" name="search" placeholder="Search by name..." value="<%= search %>">
        </div>
        <div class="col-md-2">
            <select name="categoryId" class="form-select">
                <option value="">All Categories</option>
                <option value="1" <%= "1".equals(categoryId)?"selected":"" %>>Digital Art</option>
                <option value="2" <%= "2".equals(categoryId)?"selected":"" %>>Music</option>
                <option value="3" <%= "3".equals(categoryId)?"selected":"" %>>Video</option>
                <option value="4" <%= "4".equals(categoryId)?"selected":"" %>>GIF</option>
                <option value="5" <%= "5".equals(categoryId)?"selected":"" %>>3D Model</option>
            </select>
        </div>
        <div class="col-md-2">
            <select name="sort" class="form-select">
                <option value="">Sort by</option>
                <option value="price_asc" <%= "price_asc".equals(sort)?"selected":"" %>>Price ↑</option>
                <option value="price_desc" <%= "price_desc".equals(sort)?"selected":"" %>>Price ↓</option>
                <option value="date_asc" <%= "date_asc".equals(sort)?"selected":"" %>>Oldest</option>
                <option value="date_desc" <%= "date_desc".equals(sort)?"selected":"" %>>Newest</option>
            </select>
        </div>
        <div class="col-md-2">
            <select name="limit" class="form-select" onchange="document.getElementById('filterForm').submit()">
                <option value="3" <%= limit==3?"selected":"" %>>3 per page</option>
                <option value="6" <%= limit==6?"selected":"" %>>6 per page</option>
                <option value="9" <%= limit==9?"selected":"" %>>9 per page</option>
            </select>
        </div>
        <div class="col-md-3 d-grid">
            <button class="btn btn-primary">Search</button>
        </div>
    </form>

    <!-- ✅ Result count -->
    <% if (!isEmptyList) { %>
    <div class="text-muted mb-3 text-start">
        Found <strong><%= totalItems %></strong> <%= totalItems == 1 ? "NFT" : "NFTs" %>
    </div>
    <% } %>

    <!-- NFT Grid -->
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <% if (nftList != null && !nftList.isEmpty()) {
            for (NFT nft : nftList) { %>
        <div class="col">
            <div class="card nft-card h-100 position-relative"
                 onclick="window.location.href='/nft/view?id=<%= nft.getId() %>'">
                <img src="<%= nft.getImageUrl() %>" alt="<%= nft.getName() %>" title="<%= nft.getName() %>">
                <div class="card-body">
                    <h5 class="card-title text-primary fw-semibold mb-2"><%= nft.getName() %></h5>
                    <p class="mb-1"><strong>Price:</strong> $<%= nft.getPrice() %></p>
                    <p class="mb-0 text-muted"><i>By <%= nft.getCreator() %></i></p>
                </div>
            </div>
        </div>
        <% } } else { %>
        <div class="col">
            <div class="alert alert-info text-center">
                No NFTs found. <a href="/nft/create" class="alert-link">Create your own NFT here</a>.
            </div>
        </div>
        <% } %>
    </div>

    <!-- Pagination -->
    <nav class="mt-5">
        <ul class="pagination justify-content-center">
            <% for (int i = 1; i <= totalPages; i++) { %>
            <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
                <a class="page-link"
                   href="/nft/list?page=<%=i%>&limit=<%=limit%>&search=<%=search%>&categoryId=<%=categoryId%>&sort=<%=sort%>"><%= i %></a>
            </li>
            <% } %>
        </ul>
    </nav>
</div>

<!-- Footer -->
<jsp:include page="/footer.jsp" />

<!-- Toast container -->
<div id="alertContainer"></div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
    document.addEventListener("DOMContentLoaded", () => {
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

        <% if (isEmptyList) { %>
        setTimeout(() => {
            showAlert("info", "No NFTs found. Try creating one!");
        }, 800);
        <% } %>
    });
</script>
</body>
</html>
