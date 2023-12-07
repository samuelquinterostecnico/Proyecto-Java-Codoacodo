<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String idUpd=request.getParameter("idUpd");
	String nom=request.getParameter("nom");
	String ape=request.getParameter("ape");
	String email=request.getParameter("email");
	String temaup=request.getParameter("temaup");
	String fotoup=request.getParameter("fotoup");
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer updateOk=st.executeUpdate("UPDATE oradores SET nombre='"+nom+"', apellido='"+ape+"', email='"+email+"', temas='"+temaup+"', foto='"+fotoup+"' WHERE id="+idUpd);
		
		if(updateOk==1) {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=Orador%20modificado%20exitosamente");			
		} else {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20modificar%20el%20orador");			
		}
	} catch(Exception e) {
		response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20modificar%20el%20orador");			
	}
	


%>