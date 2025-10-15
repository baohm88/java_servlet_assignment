<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.t2404e.nft.entity.NFT, java.util.Map" %>

<%
    NFT nft = (NFT) request.getAttribute("nft");
    boolean isEdit = (nft != null);
    Map<String, String> errors = (Map<String, String>) request.getAttribute("errors");
%>

<%!
    // ✅ Helper method to safely get parameter value or fallback (Jakarta EE 9 compatible)
    public String getValue(jakarta.servlet.http.HttpServletRequest request, String paramName, String defaultVal) {
        String val = request.getParameter(paramName);
        return (val != null) ? val : defaultVal;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= isEdit ? "Edit NFT" : "Create NFT" %></title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- CKEditor -->
    <script src="https://cdn.ckeditor.com/ckeditor5/41.1.0/classic/ckeditor.js"></script>
    <!-- Cloudinary -->
    <script src="https://upload-widget.cloudinary.com/latest/global/all.js" type="text/javascript"></script>

    <style>
        body {
            background-color: #f8f9fa;
            font-family: "Segoe UI", sans-serif;
        }
        .form-container {
            max-width: 750px;
            margin: 40px auto;
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 3px 15px rgba(0,0,0,0.1);
        }
        .ck-editor__editable[role="textbox"] { min-height: 180px; }
        #image-preview {
            display: none;
            max-width: 320px;
            max-height: 260px;
            border-radius: 10px;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<jsp:include page="/navbar.jsp" />

<div class="form-container">
    <h3 class="text-center mb-4"><%= isEdit ? "Edit NFT" : "Create New NFT" %> 🖼️</h3>

    <form action="<%= isEdit ? "/nft/update" : "/nft/create" %>" method="post" novalidate>
        <% if (isEdit) { %>
        <input type="hidden" name="id" value="<%= nft.getId() %>">
        <% } %>

        <!-- NFT Name -->
        <div class="mb-3">
            <label for="name" class="form-label fw-semibold">NFT Name</label>
            <input type="text"
                   class="form-control <%= (errors!=null && errors.containsKey("name"))?"is-invalid":"" %>"
                   id="name" name="name"
                   value="<%= isEdit ? nft.getName() : getValue(request,"name","") %>">
            <% if (errors!=null && errors.containsKey("name")) { %>
            <div class="invalid-feedback"><%= errors.get("name") %></div>
            <% } %>
        </div>

        <!-- Description -->
        <div class="mb-3">
            <label for="description" class="form-label fw-semibold">Description</label>
            <textarea id="description" name="description"
                      class="form-control <%= (errors!=null && errors.containsKey("description"))?"is-invalid":"" %>"><%= isEdit ? nft.getDescription() : getValue(request,"description","") %></textarea>
            <% if (errors!=null && errors.containsKey("description")) { %>
            <div class="invalid-feedback d-block"><%= errors.get("description") %></div>
            <% } %>
        </div>

        <!-- Price -->
        <div class="mb-3">
            <label for="price" class="form-label fw-semibold">Price (USD)</label>
            <input type="number" min="0" step="0.01"
                   class="form-control <%= (errors!=null && errors.containsKey("price"))?"is-invalid":"" %>"
                   id="price" name="price"
                   value="<%= isEdit ? nft.getPrice() : getValue(request,"price","") %>">
            <% if (errors!=null && errors.containsKey("price")) { %>
            <div class="invalid-feedback"><%= errors.get("price") %></div>
            <% } %>
        </div>

        <!-- NFT Image -->
        <div class="mb-3">
            <label class="form-label fw-semibold">NFT Image</label>
            <input type="hidden" id="imageUrl" name="imageUrl"
                   value="<%= isEdit ? nft.getImageUrl() : getValue(request,"imageUrl","") %>">

            <img id="image-preview"
                 src="<%= (isEdit && nft.getImageUrl()!=null) ? nft.getImageUrl() : getValue(request,"imageUrl","") %>"
                 style="<%= ((isEdit && nft.getImageUrl()!=null) || (request.getParameter("imageUrl")!=null && !request.getParameter("imageUrl").isEmpty())) ? "display:block;" : "display:none;" %>"
                 alt="Preview">

            <div class="mt-2">
                <button type="button" id="upload-btn" class="btn btn-outline-primary btn-sm">Upload Image</button>
                <button type="button" id="clear-btn" class="btn btn-outline-secondary btn-sm ms-2">Clear</button>
            </div>
            <% if (errors!=null && errors.containsKey("imageUrl")) { %>
            <div class="text-danger small mt-1"><%= errors.get("imageUrl") %></div>
            <% } %>
        </div>

        <!-- Category -->
        <div class="mb-3">
            <label for="categoryId" class="form-label fw-semibold">Category</label>
            <select name="categoryId" id="categoryId"
                    class="form-select <%= (errors!=null && errors.containsKey("categoryId"))?"is-invalid":"" %>">
                <option value="1" <%= isEdit && nft.getCategoryId()==1 ? "selected":"" %>>Digital Art</option>
                <option value="2" <%= isEdit && nft.getCategoryId()==2 ? "selected":"" %>>Music</option>
                <option value="3" <%= isEdit && nft.getCategoryId()==3 ? "selected":"" %>>Video</option>
                <option value="4" <%= isEdit && nft.getCategoryId()==4 ? "selected":"" %>>GIF</option>
                <option value="5" <%= isEdit && nft.getCategoryId()==5 ? "selected":"" %>>3D Model</option>
            </select>
            <% if (errors!=null && errors.containsKey("categoryId")) { %>
            <div class="invalid-feedback d-block"><%= errors.get("categoryId") %></div>
            <% } %>
        </div>

        <!-- Creator -->
        <div class="mb-3">
            <label for="creator" class="form-label fw-semibold">Creator</label>
            <input type="text"
                   class="form-control <%= (errors!=null && errors.containsKey("creator"))?"is-invalid":"" %>"
                   id="creator" name="creator"
                   value="<%= isEdit ? nft.getCreator() : getValue(request,"creator","") %>">
            <% if (errors!=null && errors.containsKey("creator")) { %>
            <div class="invalid-feedback"><%= errors.get("creator") %></div>
            <% } %>
        </div>

        <!-- Wallet Address -->
        <div class="mb-3">
            <label for="walletAddress" class="form-label fw-semibold">Wallet Address</label>
            <input type="text"
                   class="form-control <%= (errors!=null && errors.containsKey("walletAddress"))?"is-invalid":"" %>"
                   id="walletAddress" name="walletAddress"
                   value="<%= isEdit ? nft.getWalletAddress() : getValue(request,"walletAddress","") %>">
            <% if (errors!=null && errors.containsKey("walletAddress")) { %>
            <div class="invalid-feedback"><%= errors.get("walletAddress") %></div>
            <% } %>
        </div>

        <!-- Status -->
        <div class="mb-3">
            <label for="status" class="form-label fw-semibold">Status</label>
            <select name="status" id="status"
                    class="form-select <%= (errors!=null && errors.containsKey("status"))?"is-invalid":"" %>">
                <option value="1" <%= isEdit && nft.getStatus()==1 ? "selected":"" %>>Active</option>
                <option value="0" <%= isEdit && nft.getStatus()==0 ? "selected":"" %>>Inactive</option>
                <option value="-1" <%= isEdit && nft.getStatus()==-1 ? "selected":"" %>>Deleted</option>
            </select>
            <% if (errors!=null && errors.containsKey("status")) { %>
            <div class="invalid-feedback d-block"><%= errors.get("status") %></div>
            <% } %>
        </div>

        <div class="d-flex justify-content-end gap-2 mt-4">
            <a href="/nft/list" class="btn btn-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary px-4">
                <%= isEdit ? "Update NFT" : "Create NFT" %>
            </button>
        </div>
    </form>
</div>

<script>
    // ✅ CKEditor initialization
    ClassicEditor.create(document.querySelector('#description')).catch(console.error);

    // ✅ Cloudinary Upload Widget
    const widget = cloudinary.createUploadWidget({
        cloudName: "xuanhung2401",
        uploadPreset: "ufx1h3qp",
        multiple: false
    }, (error, result) => {
        if (!error && result && result.event === "success") {
            const url = result.info.secure_url;
            document.getElementById("imageUrl").value = url;
            const preview = document.getElementById("image-preview");
            preview.src = url;
            preview.style.display = "block";
        }
    });

    document.getElementById("upload-btn").addEventListener("click", () => widget.open(), false);
    document.getElementById("clear-btn").addEventListener("click", () => {
        document.getElementById("imageUrl").value = "";
        const img = document.getElementById("image-preview");
        img.src = "";
        img.style.display = "none";
    });
</script>
</body>
</html>
