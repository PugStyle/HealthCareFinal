<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="gestioneForm.FormFacade" %>
<%@ page import="gestioneForm.GestioneFormBean" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.mongodb.client.MongoClient" %>

<%
	String error_message = (String) request.getAttribute("error");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Form</title>
		<link rel="stylesheet" href="./css/MyFormStyle.css">
		<script src="./js/myFormScript.js"></script>
	</head>
	<body onload="attivaMyForm()">
		<jsp:include page="navbar.jsp"/>
			<div id ="FormNavbar">
				<jsp:include page="FormNavbar.jsp"/>
			</div>
			<div id="OpenedClosedForms">
				<button id="OpenedFormButton" onclick="toOpenedForms()">Aperti</button>
				<button id="ClosedFormButton" onclick="toClosedForms()">Chiusi</button>
			</div>
			<%if(error_message!=null){ %>
			<div class = errorMessage>
				<p><%=error_message %></p>
			</div><%} %>
		<div id="Forms">
			<div id="OpenedForms">
				<table>
				
				<!-- get the user's email from the HttpSession -->
				<% String email = (String)session.getAttribute("email");
				
				//list of open forms
				List<GestioneFormBean>listaFormAperti = (List<GestioneFormBean>) request.getAttribute("listaFormAperti");
				
				//list of closed forms
				List<GestioneFormBean> listaFormChiusi = (List<GestioneFormBean>) request.getAttribute("listaFormChiusi");
				if(listaFormAperti != null){
				for(GestioneFormBean f : listaFormAperti){%>
					<tr>
						<td><%= f.getTitolo() %></td>
						<td><%= f.getDataApertura() %></td>
						<td><form method = "get" action="DettaglioFormServlet"> 
						<button type="submit" name="id" value =<%=f.getIdform() %> class = "DettagliButton">
						Vedi dettagli</button></form></td>
					</tr>
				<%} %>
				</table>
			</div><%} %>
			<%if(listaFormChiusi!=null){ %>
			<div id="ClosedForms">
				<table>
					<%for(GestioneFormBean f : listaFormChiusi){%>
					<tr>
				
						<td><%= f.getTitolo() %></td>
						<td><%= f.getDataApertura() %></td>
						<td><form method = "get" action="DettaglioFormServlet">  
						<button type="submit" name="id" value =<%=f.getIdform() %> class = "DettagliButton">
						Vedi dettagli</button></form></td>
					</tr>
				<%}} %>
				</table>
			</div>
		</div>
	</body>
</html>