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

            if (idParam == null || idParam.isEmpty()) {
                resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                resp.getWriter().write("Missing NFT Id");
                return;
            }

            long id = Long.parseLong(idParam);
            boolean deleted = repo.deleteById(id);

            if (deleted) {
                resp.setStatus(HttpServletResponse.SC_OK);
                resp.getWriter().write("NFT deleted successfully");
                System.out.println("Deleted NFT id = " + id);
            } else {
                resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                resp.getWriter().write("NFT not found");
            }

        } catch (NumberFormatException e) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("Invalid NFT Id format");
        } catch (Exception e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("Error deleting NFT: " + e.getMessage());
        }
    }
}
