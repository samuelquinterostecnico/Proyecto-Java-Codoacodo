<!doctype html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lista Usuarios</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 		rel="stylesheet"		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 		crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">

		<h1 class="text-center m-3 fs-3">Lista de Usuarios</h1>
		

		<button class="btn btn-success my-2">Agregar Usuario</button>
		<table class="table text-center">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">User</th>
					<th scope="col">Password</th>
					<th scope="col">Operaciones</th> 
				</tr>
			</thead>
			<tbody>
				<!-- dentro de estas etiquetas programamos en java  -->

				<% 
		    	/* podemos conectarno a la db, buscar los alumnos, generar una tabla y enviarla al cliente  */
		    	ConexionDB conn=new ConexionDB();
				Statement st=conn.conectar();
				ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
				
				while(rs.next()) {
					out.println("<tr>");
					
					out.println("<td>");
					out.println(rs.getInt("id"));
					out.println("</td>");
					
					out.println("<td>");
					out.println(rs.getString("user"));
					out.println("</td>");

					out.println("<td>");
					out.println(rs.getString("pass"));
					out.println("</td>");
					
					out.println("<td>");
					out.println("<i class='bi bi-pencil-fill m-1'></i>");
					out.println("<i class='bi bi-trash-fill m-1'></i>");
					out.println("</td>");					

					out.println("</tr>");
				}
				
				 //"http://localhost:8080/conf-bsas23564/view/listadoUsuarios.jsp"
		    	%>
			</tbody>
		</table>




	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>