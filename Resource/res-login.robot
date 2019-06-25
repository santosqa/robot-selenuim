*** Settings ***
Resource    ../Locators/loc-login.robot


*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser                       ${URL}                             ${Browser}
    Maximize Browser Window
Fechar navegador
    Close Browser


#IN01: login Usuário Inválido
Usuário inválido, senha válida.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${Usuário_inválido}
    Input Text                         ${Campo_senha}                     ${Senha_válida}
    Capture Page Screenshot
    Click Element                      ${Botão_entrar}
Valida mensagem Erro Usuário Inválido
    Sleep   05s
    Element text should be             ${Elemento_msg_Erro_login}         ${Texto_erro_user_login_EN}
    Capture Page Screenshot


#IN02: login Senha Inválida
Usuário válido, senha inválida.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${Usuário_válido}
    Input Text                         ${Campo_senha}                     ${Senha_inválida}
    Capture Page Screenshot
    Click Element                      ${Botão_entrar}
Valida mensagem Senha Inválida
    Wait Until Element Is Visible      ${Elemento_msg_Erro_login}         10s
    Element text should be             ${Elemento_msg_Erro_login}         ${Texto_erro_key_login_EN}
    Capture Page Screenshot


#IN03: login Caracteres especiais
Usuário caracteres Especiais, senha caracteres Especiais.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${caracteres_especiais}
    Input Text                         ${Campo_senha}                     ${caracteres_especiais}
    Capture Page Screenshot
    Click Element                      ${Botão_entrar}
Valida mensagem Erro de login
    Wait Until Element Is Visible      ${Elemento_msg_Erro_login}         10s
    Element text should be             ${Elemento_msg_Erro_login}         ${Texto_erro_user_login_EN}
    Capture Page Screenshot


#IN04: login não preenchido
Usuário não informar, acionar tab, campo senha não informar, acionar tab.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Capture Page Screenshot
    Set Focus To Element               ${Campo_usuário}
    Set Focus To Element               ${Campo_senha}
    Set Focus To Element               ${Campo_usuário}
Valida alerta de campo obrigatório
    Wait Until Element Is Visible      ${Alerta usuário Obrigatório}      10s
    Element text should be             ${Alerta usuário Obrigatório}      ${Texto usuário Obrigatório}
    Element text should be             ${Alerta Senha Obrigatória}        ${Texto Senha Obrigatória}
    Capture Page Screenshot


#IN05: login efetuado com sucesso
Usuário válido, senha válida.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${Usuário_válido}
    Input Text                         ${Campo_senha}                     ${Senha_válida}
    Capture Page Screenshot
    Click Element                      ${Botão_entrar}
Valida tela inicial Dashboard
    Title Should Be                    ${title_alliance}
    Capture Page Screenshot


#IN06: login imagem Wtt
Logo WTT direciona para site institucional
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Capture Page Screenshot
    Page Should Contain Link           http://www.wtt.com.br/#alliance
    Click Element                      css=div.text-left
 ######## Usar Select window... print no grupo do whatsapp
   ## Elementos e links não estão em variaveis devido necessidade de refinamento na validação
     #captura de evidência não está saindo a tela que foi direcionado


#IN07: login imagem Alliance Lite
Logo Alliance Lite direciona para site
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Capture Page Screenshot
    Page Should Contain Link           http://www.wtt.com.br/
    Click Element                      css=div.col-7
 ######## Usar Select window... print no grupo do whatsapp
    ## Elementos e links não estão em variaveis devido necessidade de refinamento na validação
     #captura de evidência não está saindo a tela que foi direcionado


#IN08: login efetuado com usuário Qualidade
Usuário qualidade, senha qualidade.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${Usuário_Qualidade}
    Input Text                         ${Campo_senha}                     ${Senha_Qualidade}
    Capture Page Screenshot
    Click Element                      ${Botão_entrar}
Valida tela inicial Dashboard Ricardo
    Title Should Be                    ${title_alliance}
    Capture Page Screenshot


#IN09: login AD efetuado com sucesso
Usuário AD, senha AD válida.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${Usuário_AD_válido}
    Input Text                         ${Campo_senha}                     ${Senha_AD_válida}
    Capture Page Screenshot
    Click Element                      ${Ativa AD}
    Click Element                      ${Botão_entrar}
Valida tela
    Page Should Contain                ${Bem Vindo}
    Capture Page Screenshot


#IN09: Erro login AD
Usuário AD válido, senha AD válida.
    Wait Until Element Is Visible      ${Botão_entrar}                    10s
    Input Text                         ${Campo_usuário}                   ${Usuário_AD_válido}
    Input Text                         ${Campo_senha}                     ${Senha_AD_válida}
    Page Should Not Contain Element    ${Desativa_AD}
    Capture Page Screenshot
    Click Element                      ${Botão_entrar}
Valida Erro login
    Wait Until Element Is Visible      ${Elemento_msg_Erro_login}         10s
    Element text should be             ${Elemento_msg_Erro_login}         ${Texto_erro_user_login_EN}
    Capture Page Screenshot