<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="gestioneForm.GestioneInterventiBean" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Interventi</title>
		<link rel="stylesheet" href="./css/interventiStyle.css">
	</head>
			<script>
		function attivaInterventi(){
			Interventi=document.getElementById("Comments");
				Interventi.classList.add("attivo");
				Interventi.style.backgroundColor='#35908B';
				Interventi.style.color='#FFFFFF';
		}
		</script>
	<body onload="attivaInterventi()">
		<jsp:include page="navbar.jsp"/>
		<div id ="FormNavbar">
			<jsp:include page="FormNavbar.jsp"/>
		</div>
				
		<div id="Titolo">
			<h1>I miei Interventi</h1>
		</div>
		
	<div id="Interventi">
		<% List<GestioneInterventiBean>listaInterventi = (List<GestioneInterventiBean>) request.getAttribute("listaInterventi"); %>
		<%for(GestioneInterventiBean i : listaInterventi){ %>
		<div id="InterventiInterno1aRiga">
		    <div class="img">
                <img id="profilo"src="./images/sample.jpg" alt="Foto Profilo">
            </div>
			<div id="FirstBox">
				<button class = "Button"><%= i.getEmail_medico()%></button>
			</div>
			<form action = "DettaglioFormServlet">
			<div id="buttonForm">
				<button class = "ButtonVediForm" name="id" value=<%=i.getId_form() %>>Vedi Form</button>
			</div>
			</form>
		</div>
		
			<div id="InterventiInterno2aRiga">
		        <div class="Commento">
  					<h3><%= i.getDescrizione()%></h3>
				</div>
			</div>
			<%} %>
		</div>
	</body>
</html>