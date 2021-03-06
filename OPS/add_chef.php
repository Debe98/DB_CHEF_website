<!DOCTYPE html>
<html>
<head>
	<!DOCTYPE html>
<html>
<head>
	<title>Quaderno 4 L.D. Inserimento</title>
	<link rel="stylesheet" type="text/css" href="CSS/graficaS.css"/>
	<link href="https://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Titillium+Web:300" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
<body>
	<p id="header"><a href="L_index.html">HOME</a></p>
	<div id="centro">
		<div id="spazio">
		</div>
		<h3>Inserimento</h3>
	</div>
	<h4>Compila i campi per aggiungere uno chef e/o una sua apparizione</h4>
	<form name="inserimento" action="ris_inserimento.php" method="GET">
		<div>
		<h5>Inserire tutti i dati dello chef</h5>
		<table>
			<tr>
				<td><p>Codice Fiscale:</p></td><td><input type="text" name="CodiceFiscaleChef" value="**" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Nome:</p></td><td><input type="text" name="Nome" value="*" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Cognome:</p></td><td><input type="text" name="Cognome" value="*" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Nazione:</p></td><td><input type="text" name="Nazione" value="*" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Et&agrave:</p></td><td><input type="text" name="età" value="" size="30" class="opz"></td>
			</tr>
		</table>
		<h6>** Sempre obbligatorio</br>*Obbligatorio solo in caso di nuovo Chef</h6></br>
		</div>
		<div>
		<h5>Inserire tutti i dati della trasmissione</h5>
		<table>
			<tr>
				<td width="200"><p>Titolo:</p></td><td width="200"><select name="Titolo" class="obb">
				<option value="none" selected>Nessuno</option>



				</select></td>
			</tr>
			<tr>
				<td><p>Numero Puntata:</p></td><td><input type="text" name="NumeroPuntata" value="**" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Data:</p></td><td><input type="text" name="Data" value="**" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Ora d'Inizio:</p></td><td><input type="text" name="OraInizio" value="**" size="30" class="obb"></td>
			</tr>
			<tr>
				<td><p>Ora di Fine:</p></td><td><input type="text" name="OraFine" value="" size="30" class="opz"></td>
			</tr>
		</table>
		<h6>** Obbligatorio</h6>
		</div>
		<input class="button" type="submit" name="invia" value="Avvia Ricerca">
		<input class="button" type="reset" name="annulla" value="Annulla">
	</form>
	<p id="footer">&copy; Luca Debernardi | s244685 PoliTO | Basi di dati | Quaderno 4</p>
</body>
</html>