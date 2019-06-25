*** Settings ***
Resource         ../Resource/res-listaDeExames.robot
Resource         ../Resource/res-login.robot
Test Setup       Ao Iniciar os testes
Test Teardown    Após Finalizar os Testes


*** Test case ***
LIST01: Exibir Lista de exames
   [Tags]   Lista
   Abrir lista de exames
   Validar lista apresentada com sucesso 

LIST02: Exibir detalhe do Exame
   [Tags]   Lista
   Exibir detalhe do exame
   Validar detalhe apresentado

LIST03: Abrir Exame
   [Tags]   Lista
   Abrir Exame
   Validar exame aberto

LIST04: Paginação de Exames
   [Tags]   Lista
   Lista de Exames
   Validar paginações

LIST05: Filtrar e Remover Filtros
   [Tags]   Lista
   Efetuar filtros e remover
   Validar que foi removido todos filtros.

LIST06: Pesquisar e abrir um resultado da pesquisa
   [Tags]   Lista
   Pesquisar e abrir um resultado da pesquisa
   Validar que exame aberto é o mesmo paciente pesquisado.