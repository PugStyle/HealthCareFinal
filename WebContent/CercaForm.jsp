
 <%
	Collection<?> allForm = (Collection<?>) request.getAttribute("allForm");
 	if(allForm == null) {
		response.sendRedirect("./SearchServlet");
		return;
	}
 	
 	System.out.println(allForm);

%>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,gestioneForm.GestioneFormBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/CercaFormStyle.css">
    <title>Cerca un form</title>
    <script src="./js/cercaFormScript.js"></script>
</head>
<body onload="attivaCercaForm()">

    <jsp:include page="navbar.jsp"/>
   <div id ="FormNavbar">
			<jsp:include page="FormNavbar.jsp"/>
		</div>

  <% 
  if(allForm != null && allForm.size() != 0){
		Iterator<?> it = allForm.iterator();
		while (it.hasNext()) {
			GestioneFormBean bean = (GestioneFormBean) it.next();

%>
	<div class="form-container">
	    <div class="vista-form">
	        <table>
	            <tr>
	                <td><%=bean.getTitolo()%></td>
	                <td><%=bean.getDataApertura()%></td>
	                <td><form method = "get" action="DettaglioFormServlet"> 
						<button type="submit" name="id" id="idButton" value =<%=bean.getIdform() %> class = "DettagliButton">
						Vedi dettagli</button></form></td>
	            </tr>
	        </table>
	    </div>
	</div> 

<%
		}
  }
	 else {
%>

	<p>No forms available</p>

<%
	}
	
%>

    

    
    
</body>
</html>

