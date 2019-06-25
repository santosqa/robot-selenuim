*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-logoff.robot

*** Keywords ***
### Setup e Teardown
Iniciar navegador
    Open Browser                     ${URL}                          ${Browser}
    Maximize Browser Window
    Sleep                            02s
    Usuário válido, senha válida.
Finalizar Navegador
    Close Browser


#OFF01: logoff Sessão finalizada com sucesso
Logoff finalizar sessão com sucesso
    Wait Until Element Is Visible    ${Botão Logoff}                   10s
    Click Element                    ${Botão Logoff}  
    Wait Until Element Is Visible    ${Botão Sair Logoff}              10s
    Capture Page Screenshot
    Click Element                    ${Botão Sair Logoff}
Validar mensagem logoff
    #Wait Until Page Contains Element     ${ElementoMsgLogoff}         10s
    #Element text should be          ${ElementoMsgLogoff}              ${TextoMgsLogoff}
    Capture Page Screenshot
    Page Should Contain Button       ${ElementoSubmit}
   
