*** Settings ***
Resource          ../main.robot

*** Keywords ***
Dado que o usuário acesse o site da w3schools
    Open Browser    url=https://www.w3schools.com   browser=Chrome
    Maximize Browser Window
Fechar o navegador
    Close Browser