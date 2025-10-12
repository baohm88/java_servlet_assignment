package com.t2404e.nft.controller;

import com.t2404e.nft.entity.NFT;
import com.t2404e.nft.repo.INFTRepo;
import com.t2404e.nft.repo.NFTRepoMySQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class EditNFTServlet extends HttpServlet {
    private final INFTRepo repo = new NFTRepoMySQL();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            long id = Long.parseLong(req.getParameter("id"));
            NFT nft = repo.findById(id);

            if (nft == null) {
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "NFT not found");
                return;
            }

            req.setAttribute("nft", nft);
            req.getRequestDispatcher("/form.jsp").forward(req, resp);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
        }
    }
}
