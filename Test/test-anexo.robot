*** Settings ***
Resource         ../Resource/res-login.robot
Resource         ../Resource/res-listaDeExames.robot
Resource         ../Resource/res-anexo.robot
Test Setup       Logar e abrir lista de exames
Test Teardown    Fechar

*** Test case ***
ANEX01: Anexar na tela de detalhe do exame
    [Tags]   Anexo
    Abrir detalhe de exames e anexar arquivo
    Validar mensagem anexado com sucesso

ANEX02: Anexar na tela do exames
    [Tags]   Anexo
    Abrir exame e anexar arquivo
    Validar mensagem de sucesso

ANEX03: Anexar arquivo .exe na tela do exame
    [Tags]    Anexo
    Abrir exame e anexar arquivo .exe
    Validar mensagem de erro
