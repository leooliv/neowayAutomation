*** Settings ***
Resource  ../main.robot

*** Variables ***
${COLOR_GROUPS_LINK}    //a[@href="colors_groups.asp"]
${COLORS_TABLE}         //*[@id="main"]/div[@class="w3-responsive"]/table

@{colors_for_validation}
...    //tr[td/a[contains(@href, 'color_tryit') and text()='Black']]
...    //tr[td/a[contains(@href, 'color_tryit') and text()='Maroon']]
...    //tr[td/a[contains(@href, 'color_tryit') and text()='Gold']]
...    //tr[td/a[contains(@href, 'color_tryit') and text()='Cyan']]
...    //tr[td/a[contains(@href, 'color_tryit') and text()='Blue']]
...    //tr[td/a[contains(@href, 'color_tryit') and text()='Silver']]
...    //tr[td/a[contains(@href, 'color_tryit') and text()='BlueViolet']]

@{hexadecimal_numbers}    
...    000000     
...    800000    
...    FFD700    
...    00FFFF    
...    0000FF    
...    C0C0C0    
...    8A2BE2

*** Keywords ***
E selecione o tutorial sobre Color Groups
    Wait Until Element Is Visible    ${COLOR_GROUPS_LINK}
    Click Element                    ${COLOR_GROUPS_LINK}
Quando visualizar a tabela de grupos de cores
    Wait Until Element Is Visible    ${COLORS_TABLE}
Então deverá validar os hexadecimais das seguintes cores:
    FOR    ${i}    IN RANGE    0    6
        Scroll Element Into View     ${colors_for_validation}[${i}]
        Element Should Contain       ${colors_for_validation}[${i}]    ${hexadecimal_numbers}[${i}] 
    END