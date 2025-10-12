package com.t2404e.nft.controller;

import com.t2404e.nft.entity.NFT;
import com.t2404e.nft.repo.INFTRepo;
import com.t2404e.nft.repo.NFTRepoMySQL;
import com.t2404e.nft.util.NFTValidator;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Map;

public class CreateNFTServlet extends HttpServlet {
    private final INFTRepo repo = new NFTRepoMySQL();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Map<String, String> errors = NFTValidator.validateInputs(req, false);

        if (!errors.isEmpty()) {
            req.setAttribute("errors", errors);
            req.getRequestDispatcher("/form.jsp").forward(req, resp);
            return;
        }

        NFT nft = NFTValidator.buildNFTFromRequest(req, false, null);
        repo.save(nft);
        System.out.println("Created NFT:" + nft.toString());
        resp.sendRedirect("/nft/list");
    }
}
