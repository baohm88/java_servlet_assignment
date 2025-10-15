<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>NFT Art Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family: "Segoe UI", sans-serif; background-color: #f8f9fa; }

        /* Hero section */
        .hero {
            background: linear-gradient(135deg, #6f42c1, #0d6efd);
            color: white;
            text-align: center;
            padding: 100px 20px 80px;
        }
        .hero h1 { font-size: 3rem; font-weight: 700; }
        .hero p { font-size: 1.2rem; opacity: 0.9; }

        /* Carousel */
        .carousel-item img {
            height: 480px;
            object-fit: cover;
            border-radius: 15px;
        }

        /* Category cards */
        .category-card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .category-card:hover { transform: translateY(-6px); }
        .category-card img {
            height: 200px;
            width: 100%;
            object-fit: cover;
        }

        /* About section */
        .about {
            background-color: #fff;
            border-top: 1px solid #eee;
            border-bottom: 1px solid #eee;
            padding: 60px 20px;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            color: #777;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<jsp:include page="/navbar.jsp" />

<!-- Hero -->
<section class="hero">
    <div class="container">
        <h1>🎨 NFT Art Gallery</h1>
        <p>Khám phá, trưng bày và sưu tập các tác phẩm nghệ thuật kỹ thuật số độc nhất.</p>
        <a href="/nft/list" class="btn btn-light btn-lg mt-3">Explore Collection</a>
    </div>
</section>

<!-- Featured Carousel -->
<div class="container my-5">
    <h2 class="fw-bold text-center mb-4 text-primary">🌟 Featured Artworks</h2>

    <div id="featuredCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner rounded-4 shadow">

            <!-- Slide 1 -->
            <div class="carousel-item active">
                <img src="https://res.cloudinary.com/xuanhung2401/image/upload/v1760545140/ezmfpvnrmpnwzetuvmen.jpg" class="d-block w-100" alt="NFT 1">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="fw-bold">Ethereal Dreams</h5>
                    <p>Digital art from the “Dreamscape” collection</p>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=1200" class="d-block w-100" alt="NFT 2">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="fw-bold">Melody of Pixels</h5>
                    <p>A fusion of sound and digital emotion</p>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1503264116251-35a269479413?w=1200" class="d-block w-100" alt="NFT 3">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="fw-bold">Visions in Motion</h5>
                    <p>Where animation meets imagination</p>
                </div>
            </div>

            <!-- Slide 4 -->
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=1200" class="d-block w-100" alt="NFT 4">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="fw-bold">Infinite Loop</h5>
                    <p>GIF artworks inspired by modern surrealism</p>
                </div>
            </div>

            <!-- Slide 5 -->
            <div class="carousel-item">
                <img src="https://res.cloudinary.com/xuanhung2401/image/upload/v1760545491/joojxgf4wc7s1zfl4dpt.jpg" class="d-block w-100" alt="NFT 5">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="fw-bold">Sculpted Dimension</h5>
                    <p>3D models pushing the limits of digital form</p>
                </div>
            </div>
        </div>

        <!-- Carousel controls -->
        <button class="carousel-control-prev" type="button" data-bs-target="#featuredCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#featuredCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>
</div>

<!-- Featured Categories -->
<div class="container my-5">
    <h2 class="text-center fw-bold mb-4 text-primary">🎭 Explore by Category</h2>
    <div class="row g-4">
        <div class="col-md-4 col-lg-2 offset-lg-1">
            <div class="card category-card">
                <img src="https://res.cloudinary.com/xuanhung2401/image/upload/v1760545140/ezmfpvnrmpnwzetuvmen.jpg" alt="Digital Art">
                <div class="card-body text-center">
                    <h5 class="fw-semibold mb-0">Digital Art</h5>
                    <a href="/nft/list?categoryId=1" class="stretched-link"></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-lg-2">
            <div class="card category-card">
                <img src="https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=800" alt="Music">
                <div class="card-body text-center">
                    <h5 class="fw-semibold mb-0">Music</h5>
                    <a href="/nft/list?categoryId=2" class="stretched-link"></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-lg-2">
            <div class="card category-card">
                <img src="https://images.unsplash.com/photo-1503264116251-35a269479413?w=800" alt="Video">
                <div class="card-body text-center">
                    <h5 class="fw-semibold mb-0">Video</h5>
                    <a href="/nft/list?categoryId=3" class="stretched-link"></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-lg-2">
            <div class="card category-card">
                <img src="https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=800" alt="GIF">
                <div class="card-body text-center">
                    <h5 class="fw-semibold mb-0">GIF</h5>
                    <a href="/nft/list?categoryId=4" class="stretched-link"></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-lg-2">
            <div class="card category-card">
                <img src="https://res.cloudinary.com/xuanhung2401/image/upload/v1760545491/joojxgf4wc7s1zfl4dpt.jpg" alt="3D Model">
                <div class="card-body text-center">
                    <h5 class="fw-semibold mb-0">3D Model</h5>
                    <a href="/nft/list?categoryId=5" class="stretched-link"></a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- About -->
<section class="about text-center">
    <div class="container">
        <h3 class="fw-bold mb-3">About NFT Art Gallery</h3>
        <p class="text-muted mx-auto" style="max-width: 750px;">
            NFT Art Gallery là nền tảng trưng bày và giao dịch tác phẩm nghệ thuật kỹ thuật số,
            nơi nghệ sĩ và nhà sưu tầm kết nối với nhau thông qua công nghệ blockchain.
            Mỗi tác phẩm là duy nhất, được xác thực và bảo chứng quyền sở hữu vĩnh viễn.
        </p>
        <a href="/nft/create" class="btn btn-primary btn-lg mt-3">Create Your NFT</a>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>© 2025 NFT Art Gallery — Crafted by Bao Ha</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
