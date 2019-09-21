<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="lib/css/votacao.css">
    <title>Votação</title>
</head>
<body>
    <div class="fundo">
            <div class="menu">
                <h3 style="color: white;  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                Usuario: <%=request.getParameter("usuario") %> </h3>
            </div>
            
            <div class="caixa">
                    <section class="botoes botoes-auto-flow">

                        <form action="./resultado.jsp" method="POST">
                            <fieldset>
                                <div  class="candidatos">
                                    <br>
                                    <input type="radio" name="candidato"  value="1"> José Ricardo

                                </div>
                                <div  class="candidatos">
                                        <br>
                                        <input type="radio" name="candidato" value="2"> João da Silva
                                </div>
                                <div  class="candidatos">
                                        <br>
                                        <input type="radio" name="candidato" value="3"> Pedro Santos
                                </div>        
                                <div  class="candidatos">
                                        <br>
                                        <input type="radio" name="candidato" value="4"> Luan Rocha
                                </div>
                            </fieldset>
                            
                            
                            <button for="radio" class="botao"type="submit"> Votar</button>
                        </form>

                 </section>

            </div>


    </div>
</body>
</html>