-------------------------------------------------------------------------------------------------------------
Obs:  Material apenas para uso como referência, *esse projeto roda somente na aplicação original.
-------------------------------------------------------------------------------------------------------------

Projeto Automatizado RobotFramework

 Alliance Lite.

 [ Documentação Robot Framework https://robotframework.org ]

   
   * Dentro da Pasta Guide, encontra-se arquivos de instruções e links para estudo.

 
  :: Para Criar o ambiente, siga os passos abaixo.
       
    1 - Instalando o Python e pip 
            Baixe o Python  [https://www.python.org/downloads/] 
            Instale via executável o Python  OBS.: Defina a variável de ambiente durante a instalação (recomendado).
            Para conferir se deu certo, no prompt de comando (cmd) execute:
            python --version
            pip --version	  
                        
    2 - Instalando Geckodriver e chromedriver
            Faça downloads dos arquivos e jogue os mesmos em:
            C:\Users\"nome do seu usuário"\AppData\Local\Programs\Python\Python"numero da versão instalada"\Scripts\
            
    3 - Instalando o Robot Framework
            No prompt de comando (cmd) execute:
            pip install robotframework
            Para saber se deu tudo certo, no prompt de comando (cmd) execute: robot --version   
            ( apresentará a versão instalada )
            
    4 - Instalando Library Selenuim
            No prompt de comando (cmd) execute:
            pip install robotframework-selenium2library


==================================================================================

   :: Comando para rodar os testes.
    
         robot -d ./Done Test
         robot é o parâmetro do framework obrigatório na chamada de execução dos testes. 
         -d é o parâmetro que indica que os resultados dos testes serão salvos.
         Test é a pasta onde contém a suite de testes que será executada.
