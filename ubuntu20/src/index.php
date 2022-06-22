<?php
    echo "Testando conexão <br><br>";
    
    // Variáveis para a conexão
    $servidor = "192.168.15.72";
    $user = "phpuser";
    $pass = "pass";

    // Cria a conexão
    $conn = new mysqli($servidor, $user, $pass);

    // Verifica
    if ($conn -> connect_error){
        echo "Conexão falhou.";
        die("Conexão falhou: ".$conn->connect_error);
    }

    echo "Conectado com sucesso! :)";
?>