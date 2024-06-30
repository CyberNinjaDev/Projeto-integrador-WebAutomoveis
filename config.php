<?php
$server = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'formulario_veiculo';

// CONEXÃO COM O BANCO DE DADOS
$conn = new mysqli($server, $usuario, $senha, $banco);

// VERIFICAR CONEXÃO
if ($conn->connect_error) {
    die("Falha ao se comunicar com o banco de dados: " . $conn->connect_error);
}
?>

