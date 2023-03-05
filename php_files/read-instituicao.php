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
// calcula quantos dados retornaram
$total = mysqli_num_rows($rs);
?>

<html>
	<head>
	<title>Resultados da pesquisa</title>
</head>
<body>
<?php
	// se o número de resultados for maior que zero, mostra os dados
	if($total > 0) {
		// inicia o loop que vai mostrar todos os dados
		do {
?>
			<p><?=$line['nome']?></p>
<?php
		// finaliza o loop que vai mostrar os dados
		} while($line = mysqli_fetch_assoc($rs));
	// fim do if
	}
?>
</body>
</html>
<?php
// tira o resultado da busca da memória
mysqli_free_result($rs);
?>

<?php
if($rs) {
    echo "Comando enviado!";
}

mysqli_close($con);

?>