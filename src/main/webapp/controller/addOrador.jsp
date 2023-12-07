<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String nom=request.getParameter("nom");
	String ape=request.getParameter("ape");
	String email=request.getParameter("email");
	String temas=request.getParameter("temas");
	String foto=request.getParameter("foto");
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer insertOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, resenia, temas, foto) VALUES ('"+nom+"','"+ape+"','"+email+"','','"+temas+"','"+foto+"') ");
		
		if(insertOk==1) {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=Orador%20creado%20exitosamente");			
		} else {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20crear%20el%20orador");			
		}
	} catch(Exception e) {
		
		response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20crear%20el%20orador");
		e.printStackTrace();
	}
	


%>