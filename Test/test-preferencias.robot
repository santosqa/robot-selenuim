*** Settings ***
Resource         ../Resource/res-login.robot
Resource         ../Resource/res-preferencias.robot
Test Setup       Browser Open
Test Teardown    Browser Close


*** Test case ***
PREF01: Usuário apresentado no header da pagina
  [Tags]   preferencias
   Usuário apresentado no header da pagina ao efetuar login
   Valida usuário apresentado no header da pagina

PREF02: Alterar theme
  [Tags]   preferencias
   Alterar thema deve persistir após reload
   Validar mensagem de sucesso