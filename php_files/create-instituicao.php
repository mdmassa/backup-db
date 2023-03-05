<?php
    if(isset($_POST['cadastrar-instituicao'])) {
        $cnpj = $_POST["cnpj"];
        $nome = $_POST["nome-instituicao"];
        $endereco = $_POST["endereco"];
        $senha = $_POST["senha"];
        $senhaCheck = $_POST["senha-check"];

    }

    if ($senha != $senhaCheck) {
        die("As senhas não correspondem.");
    } 

    $host = "localhost";
    $dbname = "OrgEvento";
    $username = "root";
    $password = "";

    $con = mysqli_connect($host, $username, $password, $dbname);

    if (!$con) {
        die("Connection failed!" . mysqli_connect_error());
    }

    $sql = "INSERT INTO Instituicoes (cnpj, nome, endereco, id_evento, senha) VALUES ('$cnpj', '$nome', '$endereco', '1', '$senha')";
  
    $rs = mysqli_query($con, $sql);
    
    if($rs) {
        echo "Instituição cadastrada!";
    }
  
    mysqli_close($con);

?>