*** Settings ***
Resource          ../resources/main.robot
Test Setup        Dado que o usuário acesse o site da w3schools
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 2: Validar valores hexadecimais de cores na tabela de Grupos de Cores
    Dado que o usuário esteja no site da w3schools
    E navegue para o menu Tutorials -> Learn Colors
    E selecione o tutorial sobre Color Groups
    Quando visualizar a tabela de grupos de cores
    Então deverá validar os hexadecimais das seguintes cores:
    #    | Cor        | Hexadecimal |
    #    | Black      | #000000     |
    #    | Marron     | #800000     |
    #    | Gold       | #FFD700     |
    #    | Cyan       | #00FFFF     |
    #    | Blue       | #0000FF     |
    #    | Silver     | #C0C0C0     |
    #    | BlueViolet | #8A2BE2     |



