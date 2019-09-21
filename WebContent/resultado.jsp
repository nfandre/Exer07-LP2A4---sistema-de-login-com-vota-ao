
<%@page import="entidades.CandidatoRepositorio"%>
<%@page import="entidades.Candidato"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Collection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="lib/css/votacao.css">
    <title>Resultado</title>
</head>
<body>

<%
	CandidatoRepositorio ur = new CandidatoRepositorio();

	String voto = request.getParameter("candidato");

	if(voto != null && !voto.isEmpty()){

		switch(Integer.parseInt(voto)){
		case 1:
			CandidatoRepositorio.getCandidatos().get(0).maisVoto();
				break;
		case 2:
			CandidatoRepositorio.getCandidatos().get(1).maisVoto();
				break;
		case 3:
			CandidatoRepositorio.getCandidatos().get(2).maisVoto();
				break;
		case 4:
			CandidatoRepositorio.getCandidatos().get(3).maisVoto();
				break;
		}

	}

	
%>


    <div class="fundo">
            <div class="menu">
                <h3 style="color: white;  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align: center;">
                Resultado: </h3>
            </div>
            
            <div class="caixa">
                    <section class="botoes botoes-auto-flow">

                        <form action="./login.html" method="POST">
                                <div  class="candidatos">
                         
                                    <p> José Ricardo <br>
                                       <%=CandidatoRepositorio.getCandidatos().get(0).getQtdVoto() %></p>
                                     
                                </div>
                                <div  class="candidatos">
                                       <p> João da Silva  <br>
                                       <%=CandidatoRepositorio.getCandidatos().get(1).getQtdVoto()%></p>
                                </div>
                                <div  class="candidatos">
                                       <p> Pedro Santos  <br>
                                       <%=CandidatoRepositorio.getCandidatos().get(2).getQtdVoto()%></p>                                               
                                </div>        
                                <div  class="candidatos">
                                       <p> Luan Rocha  <br>
                                       <%=CandidatoRepositorio.getCandidatos().get(3).getQtdVoto()%></p>                            
                                </div>
                            <button for="radio" class="botao"type="submit"> Sair</button>
                        </form>

                 </section>

            </div>


    </div>
</body>
</html>