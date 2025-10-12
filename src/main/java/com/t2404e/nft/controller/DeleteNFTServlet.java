package com.t2404e.nft.controller;

import com.t2404e.nft.repo.INFTRepo;
import com.t2404e.nft.repo.NFTRepoMySQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DeleteNFTServlet extends HttpServlet {
    private final INFTRepo repo = new NFTRepoMySQL();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idParam = req.getParameter("id");
            if (idParam != null || !idParam.isEmpty()) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing NFT Id");
                return;
            }
            long id = Long.parseLong(idParam);
            repo.deleteById(id);

            resp.sendRedirect("/nft/list");
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid NFT Id");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
