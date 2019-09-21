<%@page import="entidades.UsuarioRepositorio"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<%
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		UsuarioRepositorio ur = new UsuarioRepositorio();
		
		if(ur.verificicarUsuario(senha)==null){
			out.println("<h1>Usuario ou senha inválida</h1>");
			
	 %>
	 		 			<a href="./login.html">Voltar</a>
	 
	 <%
		}else{
	 %>
	 	<jsp:forward page="votacao.jsp">
	 	<jsp:param value="<%= usuario %>" name="usuario"/>
	 	</jsp:forward>
	 	
	 <%
		}
		
	%>

</body>
</html>