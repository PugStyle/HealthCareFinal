<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Interventi</title>
		<link rel="stylesheet" href="./css/interventiStyle.css">
	</head>
	<body>
		<jsp:include page="navbar.html"/>
		<div id ="FormNavbar">
			<jsp:include page="FormNavbar.jsp"/>
		</div>
				
		<div id="Titolo">
			<h1>I miei Titoli</h1>
		</div>
		
	<div id="Interventi">
		
		<div id="InterventiInterno1aRiga">
		    <div class="img">
                <img id="profilo"src="./images/sample.jpg" alt="Foto Profilo">
            </div>
			<div id="FirstBox">
				<button class = "Button">NOME DOTTORE</button>
			</div>
			<div id="FirstBox">
				<button class = "Button">DD/MM/YYYY</button>
			</div>
			<div>
				<button class = "ButtonVediForm">Vedi Form</button>
			</div>
		</div>
		
			<div id="InterventiInterno2aRiga">
		        <div class="Commento">
  					<h3>Intervento di un medico</h1>
				</div>
			</div>
			
		</div>
	</body>
</html>