<?php

require_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // PEGANDO OS DADOS DO FORMULARIO
    $nome = $_POST['nome'] ?? null;
    $email = $_POST['email'] ?? null;
    $telefone = $_POST['telefone'] ?? null;
    $pagamento = $_POST['pagamento'] ?? null;
    $cidade = $_POST['cidade'] ?? null;
    $estado = $_POST['estado'] ?? null;
    $endereco = $_POST['endereco'] ?? null;

    // Verificar se todos os campos foram preenchidos
    if ($nome && $email && $telefone && $pagamento && $cidade && $estado && $endereco) {
        // Preparar comando para tabela
        $smtp = $conn->prepare("INSERT INTO compra (nome, email, telefone, pagamento, cidade, estado, endereco) VALUES (?,?,?,?,?,?,?)");
        $smtp->bind_param("sssssss", $nome, $email, $telefone, $pagamento, $cidade, $estado, $endereco);

        // Se executar corretamente
        if ($smtp->execute()) {
            echo "Mensagem enviada com sucesso!";
        } else {
            echo "Erro no envio do formulário: " . $smtp->error;
        }

        $smtp->close();
        $conn->close();
    } else {
        echo "Por favor, preencha todos os campos do formulário.";
    }
} else {
    echo "Método de requisição inválido.";
}
?>
