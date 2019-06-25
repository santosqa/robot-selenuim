*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-preferencias.robot

*** Keywords ***
### Setup e Teardown
Open
    Open Browser                     ${URL}                           ${Browser}
    Maximize Browser Window
    Usuário válido, senha válida.
Close
    Close Browser

#IDI01: Define Idioma
Configura idioma
    Wait Until Element Is Visible    ${configurações}                 10s
    Capture Page Screenshot
    Click Element                    ${configurações}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${Personalização}                10s
    Click Element                     ${Personalização}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${Options_Languages}             10s
    Click Element                     ${Options_Languages}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${campo_Languages}               10s
    Set Focus To Element             ${campo_Languages}
    Input Text                       ${campo_Languages}               ${pt-BR}
    Click Element                    ${salvar_idioma}
    Capture Page Screenshot
Validar mensagem de sucesso
    Element Text Should be           ${botão_voltar_tela_Idioma}      Voltar
