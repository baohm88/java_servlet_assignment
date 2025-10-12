package com.t2404e.nft.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NFT {
    private long id;
    private String name;
    private long categoryId;
    private String description;
    private String imageUrl;
    private double price;
    private String creator;
    private String walletAddress;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;
    private int status;

    public NFT(String name, String description, double price, String imageUrl,
               long categoryId, String creator, String walletAddress, int status) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.imageUrl = imageUrl;
        this.categoryId = categoryId;
        this.creator = creator;
        this.walletAddress = walletAddress;
        this.status = status;
    }
}