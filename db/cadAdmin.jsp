<%@ page import="java.sql.*, java.time.*, java.util.*" %>
<%@ include file="conexao.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<%
    // cria as variáveis das informações

    String vnome = request.getParameter("nome");
    String vemail = request.getParameter("email");
    String vsenha = request.getParameter("senha");
    int vcargo = Integer.parseInt(request.getParameter("cargo"));

    String sql = "insert into organizador (nome, email, senha, cargo) values (?,?,?,?);";

    PreparedStatement stm = conexao.prepareStatement(sql);

    stm.setString( 1, vnome );
    stm.setString( 2, vemail );
    stm.setString( 3, vsenha );
    stm.setInt( 4, vcargo );

    stm.execute();
    stm.close();
%>