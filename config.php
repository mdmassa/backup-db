<?php

$cnpj = $_POST["cnpj"];
$nome = $_POST["nome-instituicao"];
$endereco = $_POST["endereco"];
$senha = $_POST["senha"];
$senhaCheck = $_POST["senha-check"];

if ($senha != $senhaCheck) {
    die("A senha está diferente.");
}   

$host = "localhost";
$dbname = "OrgEvento";
$username = "root";
$password = "";
        
$conn = mysqli_connect(hostname: $host,
                       username: $username,
                       password: $password,
                       database: $dbname);
        
if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}           
        
$sql = "INSERT INTO Instituicoes (cnpj, nome, endereco, senha)
        VALUES (?, ?, ?, ?)";

$stmt = mysqli_stmt_init($conn);

if ( ! mysqli_stmt_prepare($stmt, $sql)) {
 
    die(mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, "ssii",
                       $cnpj,
                       $nome,
                       $endereco,
                       $senha);

mysqli_stmt_execute($stmt);

echo "Instituicao cadastrada.";