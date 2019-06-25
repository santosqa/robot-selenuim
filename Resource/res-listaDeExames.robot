*** Settings ***
Resource    ../Locators/loc-login.robot
Resource    ../Locators/loc-listaDeExames.robot


*** Keywords ***
### Setup e Teardown
Ao Iniciar os testes
  Open Browser                     ${URL}                            ${Browser}
  Maximize Browser Window
  Usuário válido, senha válida.
Após Finalizar os Testes
  Close Browser


#LIST01: Exibir Lista de exames
Abrir lista de exames
  Wait Until Element Is Visible      ${Sandwich}                          10s
  Capture page Screenshot
  Click Button                       ${Sandwich}
  Wait Until Element Is Visible      ${Diagnósticos}                      10s
  Capture Page Screenshot
  Click Element                      ${Diagnósticos}
  Wait Until Element Is Visible      ${Exames}                            10s
  Capture page Screenshot
  Click Element                      ${Exames}
  Wait Until Element Is Visible      ${Table Row}                          10s
  Capture page Screenshot
Validar lista apresentada com sucesso
  Wait Until Element Is Visible      ${paginação}                          10s


#LIST02: Abrir detalhe do Exame
Exibir detalhe do exame
  Abrir lista de exames
  Click Element                      ${Table Row}
  Sleep                              03s
  Capture page Screenshot
Validar detalhe apresentado
  Wait Until Element Is Visible      ${Séries}


#LIST03: Abrir Exame
Abrir Exame
  Abrir lista de exames
  Click Element                      ${Abrir Exame}
  Sleep                              03s
  Capture page Screenshot
Validar exame aberto
  Wait Until Element Is Visible      ${Lista_de_Templates}


#LIST04: Paginação de Exames
Lista de Exames
  Abrir lista de exames
  Sleep                              02s
  Click Element                      ${Página 2}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Página 3}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Página 1}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Próxima Página}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Página Anterior}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Ir para última Página}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Ir para Primeira Página}
Validar paginações
  Wait Until Element Is Visible      ${Página 1}                           10s
  Capture page Screenshot


#LIST05: Filtrar e Remover Filtros
Efetuar filtros e remover
  Abrir lista de exames
  Click Element                      ${Abrir Data Nascimento}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Seleção data Hoje}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir Data Nascimento}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Resetar data}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir gênero}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${selecinar masculino}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir gênero}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${selecinar feminino}
  Sleep                              02s
  Capture page Screenshot
  click Element                      ${Resetar filtro}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir data Exame}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Seleção data Hoje}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir data Exame}
  Sleep                              02s
  Click Element                      ${Resetar data}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir filtro Status}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Selecionar Status Associado}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir filtro Status}
  Sleep                              02s
  Click Element                      ${Selecionar Status Agendado}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir filtro Status}
  Sleep                              02s
  Click Element                      ${Selecionar Status Finalizado}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Abrir filtro Status}
  Sleep                              02s
  Click Element                      ${Selecionar Status À Laudar}
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Resetar filtro}
  Sleep                              02s
  Capture page Screenshot
  Input text                         ${Busca paciente}                     Maria
  Sleep                              02s
  Capture page Screenshot
  Input text                         ${Busca Origem}                       DASA
  Sleep                              02s
  Capture page Screenshot
  Input text                         ${Busca Descrição}                    Ultra
  Sleep                              02s
  Capture page Screenshot
  Input text                         ${Busca Modalidade}                   US
  Sleep                              02s
  Capture page Screenshot
  Click Element                      ${Remover Todos Filtros}
  Sleep                              02s
Validar que foi removido todos filtros.
  Page Should Not Contain Element    ${Remover Todos Filtros}
  Capture page Screenshot


#LIST06: Pesquisar e abrir um resultado da pesquisa
Pesquisar e abrir um resultado da pesquisa
  Abrir lista de exames
  Input text                         ${Busca_paciente}                     CINTIA PEREIRA GONCALVES MEDEIROS
  Wait Until Element Is Visible      ${Abre_resultado_Busca_paciente}
  Capture page Screenshot
  Double Click Element               ${Abre_resultado_Busca_paciente}
  Capture Page Screenshot     
Validar que exame aberto é o mesmo paciente pesquisado.
  Page Should Not Contain Element    ${Busca_paciente}


