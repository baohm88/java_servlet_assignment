# 🎨 NFT Marketplace — Java Servlet + JSP + MySQL

A dynamic full-stack **NFT Gallery Web App** built with **Java Servlet (Jakarta EE)**, **JSP**, and **MySQL**.  
It allows users to **create, view, edit, search, filter, and manage NFTs** through a responsive Bootstrap interface.

---

## 🚀 Features

- CRUD (Create / Read / Update / Delete)
- Filter NFTs by category, search, and sorting (price/date)
- Pagination for large collections
- Cloudinary image upload integration
- CKEditor for rich text NFT descriptions
- Toast + Modal confirmation (Bootstrap)
- Clean UI with shared `navbar.jsp`, `footer.jsp`, and `styles.css`

---

## 🛠️ Tech Stack

| Layer | Technology |
|--------|-------------|
| Backend | Java Servlet (Jakarta EE 10) |
| View | JSP + JSTL + Bootstrap 5 |
| Database | MySQL |
| ORM | JDBC |
| Storage | Cloudinary (image upload) |
| Rich Text | CKEditor 5 |
| Web Server | Apache Tomcat 10+ |

---

## 🧩 Project Structure

```
NFT/
├── src/main/java/com/t2404e/nft/
│   ├── controller/
│   │   ├── CreateNFTServlet.java
│   │   ├── DeleteNFTServlet.java
│   │   ├── EditNFTServlet.java
│   │   ├── ListNFTServlet.java
│   │   ├── UpdateNFTServlet.java
│   │   └── ViewNFTServlet.java
│   ├── entity/
│   │   └── NFT.java
│   ├── repo/
│   │   ├── INFTRepo.java
│   │   └── NFTRepoMySQL.java
│   └── util/
│       ├── MySQLConnector.java
│       └── NFTValidator.java
│
├── src/main/webapp/
│   ├── WEB-INF/
│   │   └── web.xml
│   ├── index.jsp
│   ├── list.jsp
│   ├── form.jsp
│   ├── view.jsp
│   ├── navbar.jsp
│   └── footer.jsp
│
├── nfts.sql
├── pom.xml
└── README.md
```

---

## 🧪 Database Setup

### 📘 Create Database
```sql
CREATE DATABASE hello_t2404e CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE hello_t2404e;
```

### 📗 Import Demo Data
```sql
SOURCE path/to/nfts.sql;
```

✅ The sample `nfts.sql` contains **19 demo NFTs** across categories:
- Digital Art  
- Music  
- Video  
- GIF  
- 3D Model
---

## ▶️ Run the Project

1. Open in **IntelliJ IDEA**  
2. Configure **Apache Tomcat 10+**  
3. Deploy the project  
4. Visit:

👉 http://localhost:8080  
to explore the NFT gallery.

---

## 🧭 App Navigation

| Page | URL | Description |
|------|-----|--------------|
| Home | `/index.jsp` | Gallery introduction & featured NFTs |
| List NFTs | `/nft/list` | Search, filter, sort, pagination |
| View NFT | `/nft/view?id=1` | NFT detail with delete modal |
| Create NFT | `/nft/create` | Upload image + CKEditor description |
| Edit NFT | `/nft/edit?id=1` | Update NFT info |
| Delete NFT | `/nft/delete` | AJAX + confirm modal |

---

## 💾 File Upload Integration

### 🖼️ Cloudinary Upload Widget
Used in `form.jsp` for image uploads:
```js
const widget = cloudinary.createUploadWidget({
  cloudName: "xuanhung2401",
  uploadPreset: "ufx1h3qp",
  multiple: false
}, (error, result) => {
  if (!error && result && result.event === "success") {
    document.getElementById("imageUrl").value = result.info.secure_url;
  }
});
```

---

## 🧱 UI Components

- **`navbar.jsp`** → shared navigation bar  
- **`footer.jsp`** → shared footer   
- **Bootstrap 5** → responsive grid, modal, and alerts  
- **JavaScript fetch()** → handle delete + toast notifications

---

## 🗂️ Database Structure

| Column | Type | Description |
|--------|------|--------------|
| id | BIGINT (AUTO_INCREMENT) | Primary Key |
| name | VARCHAR(100) | NFT title |
| description | TEXT | Detailed description |
| price | DECIMAL(10,2) | Price in USD |
| imageUrl | VARCHAR(255) | Cloudinary URL |
| categoryId | INT | 1–5 (Digital Art, Music, etc.) |
| creator | VARCHAR(100) | NFT creator name |
| walletAddress | VARCHAR(255) | Blockchain wallet |
| status | TINYINT | 1=Active, 0=Inactive, -1=Deleted |

---

## 👨‍💻 Author

**Ha Manh Bao**  
FPT Aptech — ADSE Program  

📧 Email: [baohm88@gmail.com]  
📺 YouTube: [@baoha5310](https://www.youtube.com/@baoha5310)

[![YouTube](https://img.shields.io/badge/YouTube-Subscribe-red?logo=youtube&logoColor=white)](https://www.youtube.com/@baoha5310)

🗓️ October 2025

---

## 💡 Future Improvements

- Add user authentication (login/register)
- NFT favorite/like system
- Role-based dashboard (Admin / Creator)
- JSON REST API endpoints for React integration
