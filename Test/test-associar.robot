*** Settings ***
Resource         ../Resource/res-login.robot
Resource         ../Resource/res-listaDeExames.robot
Resource         ../Resource/res-Associar.robot
Test Setup       Iniciar navegador
Test Teardown    Finalizar navegador

*** Test case ***
  
#Teste Positivo
Ass01: Associar Exame  
      [Tags]   Associar
      Associar exame com imagem a um exame sem imagem
      Validar Exame associado

Ass02: Associar Laudo
      [Tags]   Associar
       Associar exame com laudo a um exame sem laudo
       Validar Laudo associado

#Teste Negativo
# Ass03: Associar Exame 
#       [Tags]   Associar
#        Associar exame com imagem a um exame sem imagem
#        Validar mensagem de erro

# Ass04: Associar Laudo 
#       [Tags]   Associar
#        Associar exame com  laudo a um exame que tenha laudo também
#        Validar mensagem de erro