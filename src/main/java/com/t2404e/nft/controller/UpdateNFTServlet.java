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

public class UpdateNFTServlet extends HttpServlet {
    private final INFTRepo repo = new NFTRepoMySQL();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String idParam = req.getParameter("id");
        if (idParam == null || idParam.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing NFT Id");
            return;
        }
        long id = Long.parseLong(idParam);

        NFT existingNFT = repo.findById(id);
        if (existingNFT == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "NFT Not Found");
            return;
        }

        Map<String, String> errors = NFTValidator.validateInputs(req, true);
        if (!errors.isEmpty()) {
            req.setAttribute("errors", errors);
            req.setAttribute("nft", existingNFT);
            req.getRequestDispatcher("/form.jsp").forward(req, resp);
            return;
        }

        NFT updatedNFT = NFTValidator.buildNFTFromRequest(req, true, existingNFT);
        repo.updateById(id, updatedNFT);
        resp.sendRedirect("/nft/list");
    }
}
