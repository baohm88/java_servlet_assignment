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

        int page = 1;
        int limit = 3; // default fallback

        try {
            String pageParam = req.getParameter("page");
            String limitParam = req.getParameter("limit");

            if (pageParam != null && !pageParam.isEmpty()) {
                page = Math.max(1, Integer.parseInt(pageParam));
            }

            if (limitParam != null && !limitParam.isEmpty()) {
                limit = Integer.parseInt(limitParam);
                if (limit != 3 && limit != 6 && limit != 9) {
                    limit = 3; // enforce only allowed values
                }
            }
        } catch (NumberFormatException e) {
            System.out.println("Invalid pagination params: " + e.getMessage());
        }

        int offset = (page - 1) * limit;

        List<NFT> nftList = repo.searchNFTs(search, categoryId, sort, limit, offset);
        int totalItems = repo.countNFTs(search, categoryId);
        int totalPages = (int) Math.ceil((double) totalItems / limit);

        req.setAttribute("nftList", nftList);
        req.setAttribute("currentPage", page);
        req.setAttribute("limit", limit);
        req.setAttribute("totalItems", totalItems);
        req.setAttribute("totalPages", totalPages);

        req.getRequestDispatcher("/list.jsp").forward(req, resp);
    }
}
