*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-listaDeExames.robot
Resource    ../Locators/loc-associar.robot
Resource    ../Locators/loc-anexo.robot


*** Keywords ***
### Setup e Teardown
Iniciar navegador
  Open Browser                                  ${URL}                                      ${Browser}
  Maximize Browser Window
  Usuário válido, senha válida.
  Pesquisar e abrir um resultado da pesquisa
Finalizar navegador
  Close Browser


#Ass01: Associar Exame ( teste positivo )
Associar exame com imagem a um exame sem imagem
  Wait Until Element Is Visible                 ${ABA_Associar Exame}                       10s
  Click Element                                 ${ABA_Associar Exame}
  Wait Until Element Is Visible                 ${Selecionar 2° chkbox associar exame}      10s
  Capture page Screenshot
  Click Element                                 ${Selecionar 2° chkbox associar exame}
  Wait Until Element Is Visible                 ${Selecionar 1° chkbox associar exame}      10s
  Click Element                                 ${Selecionar 1° chkbox associar exame}
  Capture page Screenshot
  Wait Until Element Is Visible                 ${Botão associar imagens}                   10s
  Click Element                                 ${Botão associar imagens}
  Capture page Screenshot
  Wait Until Element Is Visible                 ${Remover 1° chkbox associar exame}         10s
  Click Element                                 ${Remover 1° chkbox associar exame}
  Sleep                                         03s
  Click Element                                 ${Remover 2° chkbox associar exame}
Validar Exame associado
  Wait Until Page Contains Element              ${Elemento_MSG_SucessoErro}                 10s
  Element Text Should be                        ${Elemento_MSG_SucessoErro}                 ${Texto_MSG_Sucesso_PT}
  Capture page Screenshot
   

#Ass02: Associar Laudo ( teste positivo )
Associar exame com laudo a um exame sem laudo
  Wait Until Element Is Visible                 ${ABA_Vínculo de laudos}                    10s
  Click Element                                 ${ABA_Vínculo de laudos}
  Wait Until Element Is Visible                 ${Selecionar 4° chkbox associar Laudo}      10s
  Capture page Screenshot
  Click Element                                 ${Selecionar 4° chkbox associar Laudo}
  Wait Until Element Is Visible                 ${Botão associar Laudo}                     10s
  Capture page Screenshot
  Click Element                                 ${Botão associar Laudo}
  Capture page Screenshot
  Wait Until Element Is Visible                 ${Remover 4° chkbox associar Laudo}         10s
  Sleep                                         03s
  Click Element                                 ${Remover 4° chkbox associar Laudo}
Validar Laudo associado
  Validar Exame associado
