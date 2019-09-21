<%@page import="entidades.UsuarioRepositorio"%>
<%@page import="entidades.Usuario"%>
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
		
		if(ur.verificicarUsuario(usuario)==null 
				&& !usuario.isEmpty() && !senha.isEmpty() 
				&& usuario != null && usuario != null){
			Usuario u = new Usuario();
			u.setUsuario(usuario);
			u.setSenha(senha);
			ur.adicionar(u);
			out.println("<h1>Cadastro efetuado com sucesso!</h1>");
			
				
	 %>	
	 		<a href="./login.html">Voltar</a>
	 
	 <%
		}else{
			out.println("<h1>Este usuário já está cadastrado no sistema, insira um usuário válido</h1>");
			%>
			<a href="./login.html">Voltar</a>
			<%
		}
		
	%>

</body>
</html>