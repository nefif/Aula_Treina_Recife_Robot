*** Settings ***
Documentation    Todas as configurações de Setup e Teardown do projeto estarão aqui.

Resource         package.robot

*** Variables ***
${BROWSER}    Chrome
${URL}        https://demoqa.com/text-box

*** Keywords ***    
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Execute Javascript
    ...    document.body.style.zoom='50%'

Fechar Navegador
    Capture Page Screenshot
    Close Browser