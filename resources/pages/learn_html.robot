*** Settings ***
Resource  ../main.robot

*** Variables ***
${HTML_FORMS_LINK}                   //a[@target='_top' and @href='html_forms.asp']
${TRY_YOURSELF_SUBMIT}               //a[@href='tryit.asp?filename=tryhtml_form_submit' and @target='_blank']
${FNAME_FIELD}                       //input[@id='fname']
${LNAME_FIELD}                       //input[@id='lname']
${SUBMIT_BUTTON}                     //input[@type='submit']
${IFRAME_LOCATOR}                    //div[@id="iframe"]/div[@id="iframewrapper"]/iframe[@id="iframeResult"]
${RECEIVED_FORM}                     //div[contains(@class, 'w3-container') and contains(@class, 'w3-large') and contains(@class, 'w3-border')]


*** Keywords ***
E selecione o tutorial sobre HTML Forms
    Scroll Element Into View         ${HTML_FORMS_LINK}
    Click Element                    ${HTML_FORMS_LINK}
E acesse o exercício "Try it yourself" do primeiro exemplo
    Wait Until Element Is Visible    ${TRY_YOURSELF_SUBMIT}
    Click Element                    ${TRY_YOURSELF_SUBMIT}
    @{window_handles}                Get Window Handles
    Sleep    4
    Switch Window                    ${window_handles}[1]
    Log                              ${window_handles}[1]
Quando preencher o formulário com um nome e sobrenome
    Wait Until Element Is Visible    ${IFRAME_LOCATOR}
    Select Frame                     ${IFRAME_LOCATOR}
    Input Text                       ${FNAME_FIELD}    Leonardo
    Input Text                       ${LNAME_FIELD}    Oliveira
E submeter o formulário
    Click Element    ${SUBMIT_BUTTON}
Então deve validar se dados enviados foram corretamente recebidos
    Wait Until Element Is Visible    ${RECEIVED_FORM}
    Element Should Contain    ${RECEIVED_FORM}    Leonardo
    Element Should Contain    ${RECEIVED_FORM}    Oliveira
    

