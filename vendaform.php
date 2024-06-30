<?php

require_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // PEGANDO OS DADOS DO FORMULARIO
    $nome = $_POST['nome'] ?? null;
    $telefone = $_POST['telefone'] ?? null;
    $modelo = $_POST['modelo'] ?? null;
    $ano = $_POST['ano'] ?? null;
    $preco = $_POST['preco'] ?? null;
    $descricao = $_POST['descricao'] ?? null;



    // Verificar se a imagem foi carregada corretamente
    if (isset($_FILES['imagem']) && $_FILES['imagem']['error'] === UPLOAD_ERR_OK) {
        $imagemTmpPath = $_FILES['imagem']['tmp_name'];
        $imagemName = $_FILES['imagem']['name'];
        $imagemNameCmps = explode(".", $imagemName);
        $imagemExtension = strtolower(end($imagemNameCmps));

        $allowedfileExtensions = array('jpg', 'gif', 'png', 'jpeg');
        if (in_array($imagemExtension, $allowedfileExtensions)) {
            $dest_path = 'uploads/' . $imagemName;
            if (move_uploaded_file($imagemTmpPath, $dest_path)) {
                $imagemPath = $dest_path;
            } else {
                echo "Erro ao mover o arquivo da imagem para o diretório de destino.";
                exit;
            }
        } else {
            echo "Tipo de arquivo não permitido. Por favor, envie uma imagem (jpg, gif, png, jpeg).";
            exit;
        }
    } else {
        echo "Erro no upload da imagem. Por favor, tente novamente.";
        exit;
    }

    // Verificar se todos os campos foram preenchidos
    if ($nome && $telefone && $modelo && $ano && $preco && $descricao && isset($imagemPath)) {
        // Preparar comando para tabela
        $stmt = $conn->prepare("INSERT INTO venda (nome, telefone, modelo, ano, preco, descricao, imagem) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssss", $nome, $telefone, $modelo, $ano, $preco, $descricao, $imagemPath);

        // Se executar corretamente
        if ($stmt->execute()) {
            echo "Anúncio publicado com sucesso!";
        } else {
            echo "Erro ao publicar o anúncio: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    } else {
        echo "Por favor, preencha todos os campos do formulário.";
    }
} else {
    echo "Método de requisição inválido.";
}
?>
