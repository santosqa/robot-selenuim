*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-listaDeExames.robot
Resource    ../Locators/loc-anotacoes.robot
Resource    ../Locators/loc-anexo.robot


*** Keywords ***
### Setup e Teardown
Abrir janela do navegador
    Open Browser                        ${URL}                          ${Browser}
    Maximize Browser Window
    Usuário válido, senha válida.
    Abrir Exame
Fechar janela do navegador
    Close Browser


#ANOT01: Inserir anotaçoes
Abrir exame e inserir anotações
    Set Focus To Element                ${Anotações}
    ${RANUSER}=   Generate Random String  100  [LETTERS]
    Input Text                          ${Anotações}                    ${RANUSER}
    Click Element                       ${Salvar_anotações}
    Wait Until Element Is Visible       ${Elemento_MSG_Sucesso_Erro}    10s
    Capture page Screenshot
Validar anotações apresentada com sucesso
    Validar mensagem de sucesso


#ANOT02: Salvar anotaçoes em branco
Abrir exame e salvar anotações em branco
    Set Focus To Element                ${Anotações}
    Clear Element Text                  ${Anotações}
    Wait Until Element Is Visible       ${Salvar_anotações}
    Click Element                       ${Salvar_anotações}
    Wait Until Element Is Visible       ${Elemento_MSG_Sucesso_Erro}    10s
    Capture page Screenshot
Validar mensagem de erro apresentada
    Validar mensagem de erro


#ANOT03: Limite máximo de caracteres
Abrir exame e salvar com limite máximo de caracteres
    Set Focus To Element                ${Anotações}
    ${Fullcaracteres}=   Generate Random String  5010  [LETTERS]
    Input Text                          ${Anotações}                    ${Fullcaracteres}
    Capture page Screenshot
    Wait Until Element Is Visible       ${Salvar_anotações}
    Click Element                       ${Salvar_anotações}
    Wait Until Element Is Visible       ${Elemento_MSG_Sucesso_Erro}    10s
    Capture page Screenshot
Validar mensagem de caracteres excedido
    Wait Until Page Contains Element    ${Elemento_MSG_Sucesso_Erro}    10s
    Element Text Should be              ${Elemento_MSG_Sucesso_Erro}    ${Texto_MSG_Excedida_PT}
    Capture page Screenshot