*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-listaDeExames.robot
Resource    ../Locators/loc-anexo.robot


*** Keywords ***
### Setup e Teardown
Logar e abrir lista de exames
  Open Browser                     ${URL}                            ${Browser}
  Maximize Browser Window
  Usuário válido, senha válida.
  Abrir lista de exames
  
Fechar
  Sleep  04s
  Close Browser

#ANEX01: Anexar na tela de detalhe do exame
Abrir detalhe de exames e anexar arquivo
  Wait Until Element Is Visible      ${Table Row}                     10s   
  Click Element                      ${Table Row}
  Capture page Screenshot
  Wait Until Element Is Visible      ${Anexar}                        10s
  Click Element                      ${Anexar}
  Capture page Screenshot
  Wait Until Page Contains Element   ${Tipo Doc. Detalhe Exame}       10s
  Click Element                      ${Tipo Doc. Detalhe Exame}
  Wait Until Page Contains Element   ${Anamnese Anexo dados Exame}    10s
  Click Element                      ${Anamnese Anexo dados Exame}
  Capture page Screenshot
  Wait Until Page Contains Element   ${Abrir Seleção Arquivo}         10s
  Choose file                        ${Abrir Seleção Arquivo}         ${IMAGE_DIR}
  Capture page Screenshot
  Wait Until Element Is Visible      ${Fechar modal Anexo}            10s
  Click Element                      ${Fechar modal Anexo}
Validar mensagem anexado com sucesso
  Wait Until Page Contains Element   ${Elemento_MSG_Sucesso_Erro}     10s
  Element Text Should be             ${Elemento_MSG_Sucesso_Erro}     ${Texto_MSG_Sucesso_PT}
  Capture page Screenshot


#ANEX02: Anexar na tela do exame
Abrir exame e anexar arquivo
  Wait Until Element Is Visible      ${Abrir Exame}                   10s
  Click Element                      ${Abrir Exame}
  Capture page Screenshot
  Wait Until Page Contains Element   ${Tipo Doc. dados Exame}         10s
  Click Element                      ${Tipo Doc. dados Exame}
  Wait Until Element Is Visible      ${Anamnese Anexo dados Exame}    10s
  Click Element                      ${Anamnese Anexo dados Exame}
  Capture page Screenshot
  Wait Until Page Contains Element   ${Abrir Seleção Arquivo}         10s 
  Choose file                        ${Abrir Seleção Arquivo}         ${IMAGE_DIR}
Validar mensagem de sucesso
  Wait Until Page Contains Element   ${Elemento_MSG_Sucesso_Erro}     10s
  Element Text Should be             ${Elemento_MSG_Sucesso_Erro}     ${Texto_MSG_Sucesso_PT}
  Capture page Screenshot

#ANEX03: Anexar arquivo .exe na tela do exame
Abrir exame e anexar arquivo .exe
  Wait Until Element Is Visible      ${Abrir Exame}
  Click Element                      ${Abrir Exame}
  Capture page Screenshot
  Wait Until Page Contains Element   ${Tipo Doc. dados Exame}         10s
  Click Element                      ${Tipo Doc. dados Exame}
  Wait Until Element Is Visible      ${Anamnese Anexo dados Exame}    10s
  Click Element                      ${Anamnese Anexo dados Exame}
  Capture page Screenshot
  Wait Until Page Contains Element   ${Abrir Seleção Arquivo}         10s
  Choose file                        ${Abrir Seleção Arquivo}         ${EXE_DIR}
Validar mensagem de erro
  Wait Until Page Contains Element   ${Elemento_MSG_Sucesso_Erro}     10s
  Element Text Should be             ${Elemento_MSG_Sucesso_Erro}     ${Texto_MSG_Erro_PT}
  Capture page Screenshot