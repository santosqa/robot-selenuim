*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-preferencias.robot


*** Keywords ***
### Setup e Teardown
Browser Open
    Open Browser                     ${URL}                           ${Browser}
    Maximize Browser Window
    Usuário válido, senha válida.
Browser Close
    Close Browser

#PREF01: Usuário apresentado no header da pagina
Usuário apresentado no header da pagina ao efetuar login
    sleep     05s
    Element Text Should be           ${Element_Usuário_Header}        ${Usuário_válido}
    Capture Page Screenshot
    Reload Page
Valida usuário apresentado no header da pagina
    sleep     05s
    Element Text Should be           ${Element_Usuário_Header}        ${Usuário_válido}
    Capture Page Screenshot

#PREF02: Alterar theme
Alterar thema deve persistir após reload
    Wait Until Element Is Visible    ${configurações}                 10s
    Capture Page Screenshot
    Click Element                    ${configurações}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${Personalização}                10s
    Click Element                     ${Personalização}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${Options_Themes}                10s
    Click Element                     ${Options_Themes}
    Wait Until Element Is Visible    ${campo_tema}                    10s
    Set Focus To Element             ${campo_tema}
    Input Text                       ${campo_tema}                    ${Dark_Theme}
    Click Button                     ${salvar_tema}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${salvar_tema}                   10s
    ${Get Theme}=                    Get Element Attribute            ${Theme_Element_href}               href
    Should be equal                  ${Get Theme}                     ${href_Dark_theme}
    Reload Page
    Wait Until Element Is Visible    ${salvar_tema}                   10s
    Capture Page Screenshot
    ${Get Theme}=                    Get Element Attribute            ${Theme_Element_href}               href
    Should be equal                  ${Get Theme}                     ${href_Dark_theme}
    Set Focus To Element             ${campo_tema}
    Input Text                       ${campo_tema}                    ${Pure_Theme}
    Click Button                     ${salvar_tema}
    Capture Page Screenshot
    ${Get Theme}=                    Get Element Attribute            ${Theme_Element_href}               href
    Should be equal                  ${Get Theme}                     ${href_Pure_theme}
Validar mensagem de sucesso
    Element Text Should be           ${Elemento_MSG_Tema_Alterado}    ${Texto_MSG_Sucesso_PT}
