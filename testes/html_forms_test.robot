*** Settings ***
Resource          ../resources/main.robot
Test Setup        Dado que o usuário acesse o site da w3schools
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 3: Validar envio de dados do formulário HTML no tutorial sobre HTML Forms
    Dado que o usuário esteja no site da w3schools
    E navegue para o menu Tutorials -> Learn HTML
    E selecione o tutorial sobre HTML Forms
    E acesse o exercício "Try it yourself" do primeiro exemplo
    Quando preencher o formulário com um nome e sobrenome
    E submeter o formulário
    Então deve validar se dados enviados foram corretamente recebidos
