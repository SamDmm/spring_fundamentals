<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<!DOCTYPE html>
<html lang='nl'>
<head>
	<title>Pizza Luigi</title>
	<link rel='icon' href='images/pizza.ico' type='image/x-icon'>
	<meta name='viewport' content='width=device-width,initial-scale=1'>
	<link rel='stylesheet' href='css/pizzaluigi.css'>
</head>
<body>
	<h1>Pizza Luigi</h1>
	<img src='images/pizza.jpg' alt='pizza' class='fullwidth'>
	<h2>${boodschap}</h2>
	<h2>De zaakvoerder</h2>
	<dl>
		<dt>Naam</dt><dd>${zaakvoerder.voornaam}</dd>
		<dt>Aantal kinderen</dt><dd>${zaakvoerder.aantalKinderen}</dd>
		<dt>Gehuwd</dt><dd>${zaakvoerder.gehuwd ? 'Ja' : 'Nee'}</dd>
		<dt>Adres</dt><dd>${zaakvoerder.adres.straat} ${zaakvoerder.adres.huisNr} <br>
							${zaakvoerder.adres.postcode} ${zaakvoerder.adres.gemeente}</dd>
	</dl>
</body>
</html>