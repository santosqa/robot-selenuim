*** Settings ***
Resource         ../Resource/res-login.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test case ***
IN01: login Usuário Inválido
  [Tags]   login
  Usuário inválido, senha válida.
  Valida mensagem Erro Usuário Inválido


IN02: login Senha Inválida
  [Tags]   login
  Usuário válido, senha inválida.
  Valida mensagem Senha Inválida


IN03: login Caracteres especiais
  [Tags]   login
  Usuário caracteres Especiais, senha caracteres Especiais.
  Valida mensagem Erro de login


IN04: login não preenchido
  [Tags]   login
  Usuário não informar, acionar tab, campo senha não informar, acionar tab.
   Valida alerta de campo obrigatório
 

IN05: login efetuado com sucesso
  [Tags]   login
  Usuário válido, senha válida.
   Valida tela inicial Dashboard


# IN06: login imagem Wtt direciona para site institucional
#   [Tags]   login
#   Logo WTT direciona para site institucional
#    #Refinar - Validar se o site é o mesmo do icone clicado e direcionado correto
   

# IN07: login imagem Alliance Lite direciona para site
#   [Tags]   login
#   Logo Alliance Lite direciona para site
#    #Refinar - Validar se o site é o mesmo do icone clicado e direcionado correto


IN08: login efetuado com usuário Qualidade
  [Tags]   login
  Usuário qualidade, senha qualidade.
  Valida tela inicial Dashboard Ricardo

# IN09: login AD efetuado com sucesso
#   [Tags]   login
#   Usuário AD, senha AD válida.
#   # Valida tela 

# IN10: Erro login AD 
#   [Tags]   login
#   Usuário AD válido, senha AD válida.
#   # Valida Erro login 

  