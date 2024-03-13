*** Settings ***
Resource          ../resources/main.robot
Test Setup        Dado que o usuário acesse o site da w3schools
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 1: Checando o funcionamento da pagina How To Make a Modal Box With CSS and JavaScript
    Dado que o usuário esteja no site da w3schools
    E navegue para o menu Tutorials -> Learn How To
    E selecione o tutorial sobre Modal Boxes
    Quando clico para abrir a modal
    Então a modal box deve ficar visível
    E ao clicar no botão de fechar
    Então a modal box não deve mais estar visível
