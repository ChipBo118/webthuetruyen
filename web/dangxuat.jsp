<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.jsp");
%> 