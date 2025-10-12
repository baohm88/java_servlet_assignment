<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.t2404e.nft.entity.NFT" %>

<%
    List<NFT> nftList = (List<NFT>) request.getAttribute("nftList");
    int currentPage = (int) request.getAttribute("currentPage");
    int totalPages = (int) request.getAttribute("totalPages");
    int limit = (int) request.getAttribute("limit");
    int totalItems = (int) request.getAttribute("totalItems");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>NFT Marketplace</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; font-family: "Segoe UI", sans-serif; }
        .nft-card img { height: 220px; width: 100%; object-fit: cover; transition: 0.3s; }
        .nft-card { border-radius: 12px; box-shadow: 0 3px 8px rgba(0,0,0,0.1); overflow: hidden; transition: 0.3s; cursor: pointer; }
        .nft-card:hover { transform: translateY(-3px); box-shadow: 0 5px 14px rgba(0,0,0,0.15); }
        .card-body { min-height: 180px; }
        .card-title a { text-decoration: none; color: #0d6efd; }
        .card-title a:hover { text-decoration: underline; }
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

<div class="container my-4">
    <h2 class="mb-4">🎨 NFT Collection</h2>

    <!-- Search and filters -->
    <form class="row g-2 mb-4" method="get" action="/nft/list">
        <div class="col-md-4">
            <input type="text" class="form-control" name="search" placeholder="Search by name...">
        </div>
        <div class="col-md-3">
            <select name="categoryId" class="form-select">
                <option value="">All Categories</option>
                <option value="1">Digital Art</option>
                <option value="2">Music</option>
                <option value="3">Video</option>
                <option value="4">GIF</option>
                <option value="5">3D Model</option>
            </select>
        </div>
        <div class="col-md-3">
            <select name="sort" class="form-select">
                <option value="">Sort by</option>
                <option value="price_asc">Price ↑</option>
                <option value="price_desc">Price ↓</option>
                <option value="date_asc">Oldest</option>
                <option value="date_desc">Newest</option>
            </select>
        </div>
        <div class="col-md-2 d-grid">
            <button class="btn btn-primary">Search</button>
        </div>
    </form>

    <p class="text-muted mb-4">
        Showing <strong><%= totalItems %></strong> NFTs
    </p>

    <!-- NFT Grid -->
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <%
            if (nftList != null && !nftList.isEmpty()) {
                for (NFT nft : nftList) {
        %>
        <div class="col">
            <div class="card nft-card h-100">
                <a href="/nft/view?id=<%= nft.getId() %>">
                    <img src="<%= nft.getImageUrl() %>" alt="<%= nft.getName() %>">
                </a>
                <div class="card-body">
                    <h5 class="card-title">
                        <a href="/nft/view?id=<%= nft.getId() %>"><%= nft.getName() %></a>
                    </h5>
                    <p class="mb-1"><strong>Price:</strong> $<%= nft.getPrice() %></p>
                    <p class="mb-1"><strong>Creator:</strong> <%= nft.getCreator() %></p>
                </div>
                <div class="card-footer bg-white text-end">
                    <a href="/nft/edit?id=<%= nft.getId() %>" class="btn btn-sm btn-warning text-white">Edit</a>
                    <button class="btn btn-sm btn-danger" onclick="confirmDelete(<%= nft.getId() %>, this)">Delete</button>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <div class="col">
            <div class="alert alert-info text-center" role="alert">
                No NFTs found. <a href="/nft/create" class="alert-link">Create your own NFT here</a>.
            </div>
        </div>
        <% } %>
    </div>

    <!-- Pagination -->
    <nav class="mt-4">
        <ul class="pagination justify-content-center">
            <%
                for (int i = 1; i <= totalPages; i++) {
            %>
            <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
                <a class="page-link"
                   href="/nft/list?page=<%=i%>&limit=<%=limit%>"><%= i %></a>
            </li>
            <%
                }
            %>
        </ul>
    </nav>
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
                if (res.ok) btn.closest('.col').remove();
                else alert("Failed to delete NFT. Code: " + res.status);
            })
            .catch(err => alert("Error: " + err));
    }
</script>

</body>
</html>
