*** Settings ***
Resource         ../Resource/res-login.robot
Resource         ../Resource/res-listaDeExames.robot
Resource         ../Resource/res-anotacoes.robot
Resource         ../Resource/res-anexo.robot
Test Setup       Abrir janela do navegador
Test Teardown    Fechar janela do navegador


*** Test case ***
   
ANOT01: Inserir anotaçoes
      [Tags]   Anotacoes
      Abrir exame e inserir anotações
      Validar anotações apresentada com sucesso 

ANOT02: Salvar anotaçoes em branco
      [Tags]   Anotacoes
      Abrir exame e salvar anotações em branco
      Validar mensagem de erro apresentada 
      
ANOT03: Limite máximo de caracteres
      [Tags]   Anotacoes
      Abrir exame e salvar com limite máximo de caracteres
      Validar mensagem de caracteres excedido 


