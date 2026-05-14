*** Settings ***
Documentation    Aqui estarão presentes todos os cenários de testes relacionados a funcionalidade Text Box do site.

Resource         ../resources/package.robot

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Caso de Teste 1 - Preencher todos os campos
    [Tags]    Regressivo
    Dado que o usuário esteja na página de Text Box
    Quando o usuário preencher os campos de Nome Completo, Email, Endereço Atual e Endereço Fixo
    E clicar no botão Submeter
    Então o sistema deve exibir os dados preenchidos na seção de Resultado

Caso de Teste 2 - Não preencher nenhum campo
    [Tags]    Negativo
    Dado que o usuário esteja na página de Text Box
    Quando o usuário não preencher nenhum campo
    E clicar no botão Submeter
    Então o sistema não deve exibir nenhum dado na seção de Resultado

Caso de Teste 3 - Preencher apenas o campo de Email
    [Tags]    Smoke
    Dado que o usuário esteja na página de Text Box
    Quando o usuário preencher apenas o campo de Email
    E clicar no botão Submeter
    Então o sistema deve exibir apenas o email preenchido na seção de Resultado