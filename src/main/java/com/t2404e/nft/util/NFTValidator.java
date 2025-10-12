package com.t2404e.nft.util;

import com.t2404e.nft.entity.NFT;
import jakarta.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

public class NFTValidator {

    public static Map<String, String> validateInputs(HttpServletRequest req, boolean isUpdate) {
        Map<String, String> errors = new HashMap<>();

        String name = req.getParameter("name");
        if (name == null || name.trim().isEmpty())
            errors.put("name", "Name is required");
        else if (name.length() < 5)
            errors.put("name", "Name must be at least 5 characters long");
        else if (!name.matches("^[a-zA-Z0-9\\s]+$"))
            errors.put("name", "Name must contain only letters, numbers or spaces");

        String description = req.getParameter("description");
        if (description == null || description.trim().isEmpty())
            errors.put("description", "Description is required");

        double price = 0;
        try {
            price = Double.parseDouble(req.getParameter("price"));
            if (price <= 0)
                errors.put("price", "Price must be greater than 0");
        } catch (NumberFormatException e) {
            errors.put("price", "Invalid price format");
        }

        String catStr = req.getParameter("categoryId");
        if (catStr == null || catStr.isEmpty())
            errors.put("categoryId", "Category is required");
        else {
            long cat = Long.parseLong(catStr);
            if (cat < 1 || cat > 5)
                errors.put("categoryId", "Category must be between 1 and 5");
        }

        String creator = req.getParameter("creator");
        if (creator == null || creator.trim().isEmpty())
            errors.put("creator", "Creator is required");
        else if (!creator.matches("^[\\p{L}\\s]+$"))
            errors.put("creator", "Creator must contain only letters and spaces");

        String walletAddress = req.getParameter("walletAddress");
        if (walletAddress == null || walletAddress.trim().isEmpty())
            errors.put("walletAddress", "Wallet address is required");
        else if (!walletAddress.matches("^0x[a-fA-F0-9]{40}$"))
            errors.put("walletAddress", "Invalid Ethereum wallet address (must be 0x + 40 hex chars)");

        String imageUrl = req.getParameter("imageUrl");
        if (!isUpdate && (imageUrl == null || imageUrl.isEmpty()))
            errors.put("imageUrl", "NFT image is required");

        String statusStr = req.getParameter("status");
        if (statusStr == null || statusStr.isEmpty())
            errors.put("status", "Status is required");

        return errors;
    }

    public static NFT buildNFTFromRequest(HttpServletRequest req, boolean isUpdate, NFT existingNFT) {
        NFT nft = (existingNFT != null) ? existingNFT : new NFT();

        nft.setName(req.getParameter("name"));
        nft.setDescription(req.getParameter("description"));
        nft.setPrice(Double.parseDouble(req.getParameter("price")));
        nft.setCategoryId(Long.parseLong(req.getParameter("categoryId")));
        nft.setCreator(req.getParameter("creator"));
        nft.setWalletAddress(req.getParameter("walletAddress"));

        String imageUrl = req.getParameter("imageUrl");
        if (isUpdate && (imageUrl == null || imageUrl.isEmpty()) && existingNFT != null)
            imageUrl = existingNFT.getImageUrl(); // giữ ảnh cũ
        nft.setImageUrl(imageUrl);

        nft.setStatus(Integer.parseInt(req.getParameter("status")));
        nft.setUpdatedAt(LocalDateTime.now());
        return nft;
    }
}
