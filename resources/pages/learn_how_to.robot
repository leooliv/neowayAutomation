*** Settings ***
Resource  ../main.robot

*** Variables ***
${SEARCH_FIELD}          //input[@class='searchinput']
${MODAL_BOX_LINK}        //a[text()='Modal Boxes']
${OPEN_MODAL_BUTTON}     //button[contains(text(), 'Open Modal')]
${MODAL_BOX}             //p[contains(text(), 'Modals are awesome!')]
${CLOSE_MODAL_BUTTON}    //span[contains(@class, 'w3-button') and contains(@class, 'w3-display-topright')]

*** Keywords ***
E selecione o tutorial sobre Modal Boxes
    Wait Until Element Is Visible        ${SEARCH_FIELD}
    Input Text                           ${SEARCH_FIELD}    Modal Box
    Click Element                        ${MODAL_BOX_LINK}
Quando clico para abrir a modal
    Click Element                        ${OPEN_MODAL_BUTTON}
Então a modal box deve ficar visível
    Wait Until Element Is Visible        ${MODAL_BOX}
E ao clicar no botão de fechar
    Click Element                        ${CLOSE_MODAL_BUTTON}
Então a modal box não deve mais estar visível
    Wait Until Element Is Not Visible    ${MODAL_BOX}