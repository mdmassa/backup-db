<?php
	if(isset($_POST['filtrar-instituicao'])){
	    $nome = $_GET['nome'];
	}

	$host = "localhost";
	$dbname = "OrgEvento";
	$username = "root";
	$password = "";

	$con = mysqli_connect($host, $username, $password, $dbname);

	if (!$con) {
	    die("Connection failed!" . mysqli_connect_error());
	}

	$sql = "SELECT * FROM Instituicoes WHERE nome LIKE '%$nome%'";

	$rs = mysqli_query($con, $sql);

	$line = mysqli_fetch_assoc($rs);

	$totalRows = mysqli_num_rows($rs);
?>

<html>
	<head>
	<title>Resultados da pesquisa</title>
</head>
<body>
<?php
	if($totalRows > 0) {
		do {
?>
			<p>
				<?php =$line['nome'] ?>
			</p>
<?php
		} while($line = mysqli_fetch_assoc($rs));
	}
?>
</body>
</html>

<?php
	mysqli_free_result($rs);
?>

<?php
	if($rs) {
	    echo "Comando enviado!";
	}

	mysqli_close($con);

?>
