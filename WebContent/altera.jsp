<%@page import="java.text.SimpleDateFormat"%>
<%@page
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
<%
	ContatoDao d = new ContatoDao();
  	Contato c = d.getContatoById(request.getParameter("id"));
  	SimpleDateFormat dataNascimento= new SimpleDateFormat("dd/MM/yyyy");
%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="text-aling: center; max-width: 700px; margin: auto">
		<h1>Alterar os seus contatos</h1>
		<br>
		<br>
		<form action="Altera">
		<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">ID:
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="id" value="<%=c.getId() %>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Nome:
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="nome" value="<%=c.getNome() %>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">E-mail:
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="email" value="<%=c.getEmail() %>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Endereço
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="endereco"value="<%=c.getEndereco() %>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Data
					de nascimento : </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="dataNascimento" value="<%=dataNascimento.format(c.getDataNascimento().getTime())%>">
				</div> 
			</div>
			<button type="submit" class="btn btn-info">Alterar</button>

		</form>
	</div>
</body>
</html>