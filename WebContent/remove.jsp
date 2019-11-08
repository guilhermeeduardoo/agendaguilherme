<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page
	import="java.util.*, 
br.com.guilherme.agenda.bd.*,
br.com.guilherme.agenda.modelo.*"%> 
<body>
<%
	String idString = request.getParameter("id");
	Long id = Long.parseLong(idString);
	ContatoDao dao = new ContatoDao();
	Contato c = new Contato();
	c.setId(id);
	dao.remove(c); 
	RequestDispatcher rd = request
			.getRequestDispatcher("/lista-contatos.jsp");
	rd.forward(request, response);
%>
<p>Removido com Sucesso meu Parcero</p>
</body>
</html>