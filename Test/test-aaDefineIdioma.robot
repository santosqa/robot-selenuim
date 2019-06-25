*** Settings ***
Resource         ../Resource/res-login.robot
Resource         ../Resource/res-preferencias.robot
Resource         ../Resource/res-aaDefineIdioma.robot
Test Setup       Open
Test Teardown    Close



*** Test case ***
IDI01: Define Idioma 
  [Tags]   idioma
   Configura idioma
