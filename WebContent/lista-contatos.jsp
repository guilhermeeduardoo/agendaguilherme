<%@page import="java.text.SimpleDateFormat"%>
<%@ page
	import="java.util.*, 
br.com.guilherme.agenda.bd.*,
br.com.guilherme.agenda.modelo.*"%> 

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background-color: #E0FFFF">
<div>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">E-mail</th>
      <th scope="col">Endereço</th>
      <th scope="col">Data de Nascimento</th>
      <th scope="col">Remover</th>
      <th scope="col">Alterar</th>
    </tr>
  </thead>
  <tbody>
  <% 
  SimpleDateFormat dataNascimento= new SimpleDateFormat("dd/MM/yyyy");
  ContatoDao dao = new ContatoDao(); List<Contato> contatos = dao.getLista();
for (Contato contato : contatos ) { %>
    <tr>
    		<td><%=contato.getId() %></td>
			<td><%=contato.getNome() %></td>
			<td><%=contato.getEmail() %></td>
			<td><%=contato.getEndereco() %></td>
			<td><%=dataNascimento.format(contato.getDataNascimento().getTimeInMillis()) %></td>
			<td><a href="remove.jsp?id=<%=contato.getId()%>">Remover</a></td>
			<td><a href="altera.jsp?id=<%=contato.getId()%>">Alterar</a></td>
		</tr>
		<% } %>
  </tbody>
</table>
</div>
</body>
</html>