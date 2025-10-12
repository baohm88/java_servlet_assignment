package com.t2404e.nft.controller;

import com.t2404e.nft.entity.NFT;
import com.t2404e.nft.repo.INFTRepo;
import com.t2404e.nft.repo.NFTRepoMySQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class ListNFTServlet extends HttpServlet {
    private final INFTRepo repo = new NFTRepoMySQL();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        String categoryId = req.getParameter("categoryId");
        String sort = req.getParameter("sort");

        int page = 1, limit = 1;
        try {
            if (req.getParameter("page") != null) page = Integer.parseInt(req.getParameter("page"));
            if (req.getParameter("limit") != null) limit = Integer.parseInt(req.getParameter("limit"));

        } catch (NumberFormatException e) {
            System.out.println("Bad Request");
        }

        int offset = (page - 1) * limit;

        List<NFT> nftList = repo.searchNFTs(search, categoryId, sort, limit, offset);

        for (NFT nft : nftList) {
            System.out.println(nft.toString());
        }
        int totalItems = repo.countNFTs(search, categoryId);
        int totalPages = (int) Math.ceil((double)totalItems / limit);

        req.setAttribute("nftList", nftList);
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("totalItems", totalItems);
        req.setAttribute("limit", limit);

        req.getRequestDispatcher("/list.jsp").forward(req, resp);
    }
}
