README - Projeto Venda de Automóveis

REPOSITORIO DOS ARQUIVOS COMPLETO COM IMAGENS NO GITHUB https://github.com/CyberNinjaDev/Projeto-integrador-WebAutomoveis

E Projeto publicado pelo host disponibilizado no GITHUB: https://cyberninjadev.github.io/Projeto-integrador-WebAutomoveis/index.html  

Introdução

Este projeto é uma aplicação web destinada à venda de automóveis. A aplicação permite que os usuários registrem seus veículos à venda, fornecendo informações detalhadas e imagens. Os compradores podem visualizar os veículos disponíveis e entrar em contato com os vendedores. Este guia fornecerá instruções detalhadas sobre como configurar e executar o projeto na sua máquina local.

Pré-requisitos

    XAMPP ou WAMP instalado.
    Navegador da Web (Google Chrome, Firefox, etc.).

Estrutura do Projeto

    config.php: Arquivo de configuração para conexão com o banco de dados.
    vendaform.php: Script PHP para processar os dados do formulário e armazená-los no banco de dados.
    index.html, buycar.html, sellcar.html: Páginas HTML para navegação.
    uploads/: Diretório para armazenar as imagens dos veículos.
    formulario_veiculo.sql: Arquivo SQL para importar a estrutura do banco de dados.

## Instruções de Instalação
Passo 1: Instale o XAMPP ou WAMP

## Baixe e instale o XAMPP ou WAMP no seu computador:

   No meu caso fiz o dowload do XAMPP, após a instalação ative as opções APACHE e MySQL.

Passo 2: Clone ou Baixe o Projeto

## Clone o repositório ou baixe o arquivo zip do projeto e extraia-o para o diretório htdocs do XAMPP (ou www do WAMP):

sh

## Navegue até o diretório htdocs do XAMPP ou www do WAMP ##
cd /c/xampp/htdocs/ # Para XAMPP
# cd /c/wamp/www/ # Para WAMP

## Clone o repositório ou copie os arquivos do projeto para este diretório ##

Passo 3: Configure o Banco de Dados

        Abra o phpMyAdmin acessando http://localhost/phpmyadmin.
        Crie um novo banco de dados chamado formulario_veiculo.
##      Importe o arquivo formulario_veiculo.sql para o banco de dados criado:
        Clique em "Importar".
        Selecione o arquivo formulario_veiculo.sql.
        Clique em "Executar".

Passo 4: Atualize as Configurações do Banco de Dados

Edite o arquivo config.php no projeto para garantir que as credenciais do banco de dados estão corretas:

php

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

Passo 5: Inicie o Servidor


        Com todos os arquivos baixados na pasta easy-portifolio
        Abra o XAMPP e inicie o Apache e o MySQL.
        Para WAMP, inicie os serviços Apache e MySQL.
        No navegador, acesse localhost/easy-portifolio/index.html.

Passo 6: Preencha e Envie o Formulário

    Navegue até a página de venda de carros (localhost/easy-portifolio/sellcar.html).
    Preencha os campos do formulário e envie para verificar se está funcionando corretamente.
    Verifique no phpMyAdmin se os dados foram armazenados corretamente na tabela venda.

Estrutura da Tabela venda

A tabela venda deve ter a seguinte estrutura:

sql

CREATE TABLE venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(255) NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    ano INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    imagem VARCHAR(255) NOT NULL
);

Conclusão

Seguindo as instruções acima, você será capaz de configurar e executar o projeto de Venda de Automóveis na sua máquina local. Caso encontre algum problema, verifique as configurações e os logs do servidor para identificar possíveis erros. Este projeto oferece uma base sólida para expandir e adicionar novas funcionalidades no futuro.
