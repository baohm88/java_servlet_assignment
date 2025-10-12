package com.t2404e.nft.repo;

import com.t2404e.nft.entity.NFT;
import com.t2404e.nft.util.MySQLConnector;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NFTRepoMySQL implements INFTRepo {

    @Override
    public void save(NFT nft) {
        String sql = """
                INSERT INTO nfts (name, category_id, description, image_url, price, creator, wallet_address, created_at, status)
                VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), ?)
                """;
        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, nft.getName());
            stmt.setLong(2, nft.getCategoryId());
            stmt.setString(3, nft.getDescription());
            stmt.setString(4, nft.getImageUrl());
            stmt.setDouble(5, nft.getPrice());
            stmt.setString(6, nft.getCreator());
            stmt.setString(7, nft.getWalletAddress());
            stmt.setInt(8, nft.getStatus());

            stmt.executeUpdate();
            System.out.println("Inserted NFT successfully");
        } catch (SQLException | ClassNotFoundException e) {
            System.err.println("Update failed: " + e.getMessage());
        }

    }

    @Override
    public NFT findById(long id) {
        String sql = "SELECT * FROM nfts WHERE id = ?";
        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) return map(rs);
        } catch (Exception e) {
            System.out.println("Failed to find NFT: " + e.getMessage());
        }
        return null;
    }

    @Override
    public List<NFT> findAll() {
        List<NFT> nfts = new ArrayList<>();
        String sql = "SELECT * FROM nfts WHERE status = 1 ORDER BY created_at DESC";
        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) nfts.add(map(rs));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return nfts;
    }

    @Override
    public List<NFT> searchNFTs(String search, String categoryId, String sort, int limit, int offset) {
        List<NFT> listNFTs = new ArrayList<>();
        String sql = "SELECT * FROM nfts WHERE status = 1";
        if (search != null && !search.isEmpty()) sql += " AND name LIKE '%" + search + "%'";
        if (categoryId != null && !categoryId.isEmpty()) sql += " AND category_id = " + categoryId;

        switch (sort == null ? "" : sort) {
            case "price_asc":
                sql += " ORDER BY price ASC";
                break;
            case "price_desc":
                sql += " ORDER BY price DESC";
                break;
            case "date_asc":
                sql += " ORDER BY COALESCE(updated_at, created_at) ASC";
                break;
            case "date_desc":
                sql += " ORDER BY COALESCE(updated_at, created_at) DESC";
                break;
            default:
                sql += " ORDER BY COALESCE(updated_at, created_at) DESC";
                break;
        }

        sql += " LIMIT " + limit + " OFFSET " + offset;

        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) listNFTs.add(map(rs));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listNFTs;
    }

    @Override
    public int countNFTs(String search, String categoryId) {
        String sql = "SELECT COUNT(*) FROM nfts WHERE status = 1";
        if (search != null && !search.isEmpty()) sql += " AND name LIKE '%" + search + "%'";
        if (categoryId != null && !categoryId.isEmpty()) sql += " AND category_id = " + categoryId;

        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) return rs.getInt(1);
        } catch (Exception e) {
            System.out.println("Failed to count NFTs: " + e.getMessage());
        }
        return 0;
    }

    @Override
    public void updateById(long id, NFT nft) {
        String sql = """
                UPDATE nfts SET name=?, category_id=?, description=?, image_url=?, price=?, 
                creator=?, wallet_address=?, updated_at=NOW(), status=? WHERE id=?
                """;
        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, nft.getName());
            stmt.setLong(2, nft.getCategoryId());
            stmt.setString(3, nft.getDescription());
            stmt.setString(4, nft.getImageUrl());
            stmt.setDouble(5, nft.getPrice());
            stmt.setString(6, nft.getCreator());
            stmt.setString(7, nft.getWalletAddress());
            stmt.setInt(8, nft.getStatus());
            stmt.setLong(9, id);

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                System.out.println("Updated FNT successfully");
            } else {
                System.out.println("No NFT found to update");
            }
        } catch (Exception e) {
            System.out.println("Failed to update NFT: " + e.getMessage());
        }
    }

    @Override
    public boolean deleteById(long id) {
        String sql = "UPDATE nfts SET status = -1, deleted_at = NOW() WHERE id = ?";
        try (Connection conn = MySQLConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setLong(1, id); // ← CHỈ SET 1 LẦN
            int rows = stmt.executeUpdate();

            if (rows > 0) {
                System.out.println("Soft deleted NFT successfully");
                return true;
            } else {
                System.out.println("No NFT found to delete");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Failed to delete NFT: " + e.getMessage());
            return false;
        }
    }

    // Mapper
    private NFT map(ResultSet rs) throws SQLException {
        return new NFT(
                rs.getLong("id"),
                rs.getString("name"),
                rs.getLong("category_id"),
                rs.getString("description"),
                rs.getString("image_url"),
                rs.getDouble("price"),
                rs.getString("creator"),
                rs.getString("wallet_address"),
                rs.getTimestamp("created_at") != null ? rs.getTimestamp("created_at").toLocalDateTime() : null,
                rs.getTimestamp("updated_at") != null ? rs.getTimestamp("updated_at").toLocalDateTime() : null,
                rs.getTimestamp("deleted_at") != null ? rs.getTimestamp("deleted_at").toLocalDateTime() : null,
                rs.getInt("status")
        );
    }
}
