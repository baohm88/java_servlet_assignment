package com.t2404e.nft.controller;

import com.t2404e.nft.entity.NFT;
import com.t2404e.nft.repo.INFTRepo;
import com.t2404e.nft.repo.NFTRepoMySQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class ViewNFTServlet extends HttpServlet {
    private final INFTRepo repo = new NFTRepoMySQL();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        try {
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.isEmpty()) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing id");
                return;
            }

            System.out.println("id: " + idParam);

            long id;
            try {
                id = Long.parseLong(idParam);
                if (id <= 0) {
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid id");
                    return;
                }
            } catch (NumberFormatException e) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid id");
                return;
            }

            NFT nft = repo.findById(id);
            if (nft == null) {
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "NFT Not Found");
                return;
            }

            req.setAttribute("nft", nft);
            req.getRequestDispatcher("/view.jsp").forward(req, resp);
        } catch (ServletException | NumberFormatException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }
}
