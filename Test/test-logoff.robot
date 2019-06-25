*** Settings ***
Resource         ../Resource/res-login.robot
Resource         ../Resource/res-logoff.robot
Test Setup       Iniciar navegador
Test Teardown    Finalizar Navegador


*** Test case ***
OFF01: logoff Sessão finalizada com sucesso
  [Tags]   logoff
   Logoff finalizar sessão com sucesso
   Validar mensagem logoff
