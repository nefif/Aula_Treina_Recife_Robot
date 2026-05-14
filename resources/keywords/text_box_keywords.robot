*** Settings ***
Documentation   Aqui estarão presentes todas as keywords/steps ligados aos cenários de testes relacionado a funcionalidade Text Box do site.

Resource    ../package.robot

*** Variables ***
${nome}                 Teste da Silva
${txt_email}            teste@teste.com
${end_atual}            Rua Teste, 123
${end_fixo}             Rua Fixa, 456


*** Keywords ***

Dado que o usuário esteja na página de Text Box
    Page Should Contain Element    ${NOME_COMPLETO}
    Page Should Contain Element    ${EMAIL}
    Page Should Contain Element    ${ENDERECO_ATUAL}   
    Page Should Contain Element    ${ENDERECO_FIXO}
    Page Should Contain Element    ${BTN_SUBMETER}
    Capture Page Screenshot

Quando o usuário preencher os campos de Nome Completo, Email, Endereço Atual e Endereço Fixo
    Input Text    ${NOME_COMPLETO}    ${nome}
    Input Text    ${EMAIL}            ${txt_email}
    Input Text    ${ENDERECO_ATUAL}   ${end_atual}
    Input Text    ${ENDERECO_FIXO}    ${end_fixo}
    Capture Page Screenshot

E clicar no botão Submeter
    Click Button    ${BTN_SUBMETER}
    Capture Page Screenshot

Então o sistema deve exibir os dados preenchidos na seção de Resultado
    Page Should Contain Element    ${RESULTADO}
    Element Should Contain   ${RESULTADO}    ${nome}
    Element Should Contain    ${RESULTADO}   ${txt_email}
    Element Should Contain    ${RESULTADO}   ${end_atual}
    Element Should Contain   ${RESULTADO}   ${end_fixo}
    Capture Page Screenshot

Quando o usuário preencher apenas o campo de Email
    Input Text    ${EMAIL}            ${txt_email}
    Capture Page Screenshot

Quando o usuário não preencher nenhum campo
    Click Button    ${BTN_SUBMETER}
    Capture Page Screenshot

Então o sistema não deve exibir nenhum dado na seção de Resultado
    Page Should Not Contain Element    ${RESULTADO_NOME}
    Capture Page Screenshot

Então o sistema deve exibir apenas o email preenchido na seção de Resultado
    Page Should Contain Element    ${RESULTADO}    ${txt_email}  

