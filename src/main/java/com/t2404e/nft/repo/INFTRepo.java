package com.t2404e.nft.repo;

import com.t2404e.nft.entity.NFT;

import java.util.List;

public interface INFTRepo {
    void save(NFT nft);
    NFT findById(long id);
    List<NFT> findAll();
    List<NFT> searchNFTs(String search, String categoryId, String sort, int limit, int offset);
    int countNFTs(String search, String categoryId);
    void updateById(long id, NFT nft);
    void deleteById(long id);
}
