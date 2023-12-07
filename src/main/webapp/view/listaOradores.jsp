<!doctype html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista Oradores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
  </head>
  <body>
    <jsp:include page="menu.jsp"></jsp:include>
    <div class="container">
    	<h1 class="text-center m-3 fs-3">Listado de Oradores</h1>
		<% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='bg-warning text-center p-1 rounded'>");
				out.println(mensaje);
				out.println("</div>");
			}	
		%>	    
    
    	<button class="btn btn-success my-2" data-bs-toggle='modal' data-bs-target='#createModal'>Agregar Orador</button>
    	
    	<table class="table text-center">
			<thead>
				<tr>
					<th scope="col">#ID</th>
					<th scope="col">Nombre</th>
					<th scope="col">Apellido</th>
					<th scope="col">Email</th>
					<th scope="col">Temas</th> 
					<th scope="col">Foto Perfil</th>
					<th scope="col">Operaciones</th>
				</tr>
			</thead>
    		
    		<tbody>
    		<% 
    		ConexionDB con=new ConexionDB();
    		Statement st=con.conectar();
    		ResultSet rs=st.executeQuery("SELECT * FROM oradores");
    		
    		while(rs.next()){
    			out.println("<tr>");

    			out.println("<td>");
    			out.println(rs.getInt("id"));
    			out.println("</td>");

    			out.println("<td>");
    			out.println(rs.getString("nombre"));
    			out.println("</td>");

    			out.println("<td>");
    			out.println(rs.getString("apellido"));
    			out.println("</td>");

    			out.println("<td>");
    			out.println(rs.getString("email"));
    			out.println("</td>");
    			
    			out.println("<td>");
    			out.println(rs.getString("temas"));
    			out.println("</td>");
    			
    			out.println("<td>");
    			out.println(rs.getString("foto"));
    			out.println("</td>");
    			
    			out.println("<td>");
    			out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleteModal' idDel='"+rs.getInt("id")+"'><i class='bi bi-trash-fill'></i></a>");
    			out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#updateModal' idUpd='"+rs.getInt("id")+"' nombre='"+rs.getString("nombre")+"' apellido='"+rs.getString("apellido")+"' email='"+rs.getString("email")+"' temas='"+rs.getString("temas")+"' foto='"+rs.getString("foto")+"'><i class='bi bi-pencil-fill'></i></a>");
    			out.println("</td>"); 			

    			out.println("</tr>");
    		}
    		%>
    		
    		</tbody>
    	</table>
    	
    	
		<!-- Delete modal -->
		<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Orador</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="../controller/delOrador.jsp" method="post">
		          <div class="mb-3 text-center">
		            <label for="recipient-name" class="col-form-label ">¿Desea eliminar el orador?</label>
		            <!-- TODO: mostrar nombre y apellido -->
		            <input type="text" class="form-control" id="recipient-name" name="id">
		          </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-success">Eliminar</button>
			      </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
		
				<!-- Update modal -->
		<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Orador</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="../controller/updOrador.jsp" method="post">
		          <div class="mb-3 text-center">
		            <input type="hidden" class="form-control " id="idUpd" name="idUpd" readonly="readonly">
		            <input type="text" class="form-control mb-3" id="nom" name="nom">
		            <input type="text" class="form-control mb-3" id="ape" name="ape">
		            <input type="text" class="form-control mb-3" id="email" name="email">
		            <input type="text" class="form-control mb-3" id="temaup" name="temaup">
		            <input type="text" class="form-control mb-3" id="fotoup" name="fotoup">
		           </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-success">Modificar</button>
			      </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>	
    	<!-- Create modal -->
		<div class="modal fade" id="createModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Crear Orador</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="../controller/addOrador.jsp" method="post">
		          <div class="mb-3 text-center">
		            <input type="text" class="form-control mb-3" id="nomAdd" name="nom" placeholder="Nombre">
		            <input type="text" class="form-control mb-3" id="apeAdd" name="ape" placeholder="Apellido">
		            <input type="text" class="form-control mb-3" id="emailAdd" name="email" placeholder="email">
		            <input type="text" class="form-control mb-3" id="temas" name="temas" placeholder="temas">
		            <input type="text" class="form-control mb-3" id="foto" name="foto" placeholder="foto perfil">
		          </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-success">Crear</button>
			      </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>	
    </div>
    
    <script src="js/listaOrador.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>