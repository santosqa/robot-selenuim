*** Settings ***
Library    Selenium2Library
Library  String

*** Variables ***
 ${Anotações}                css=div > div > div > default-textarea > textarea
 ${Salvar_anotações}         css=i[class="fas fa-save fa-lg"]
 ${Texto_MSG_Excedida_PT}    Por favor verifique se os campos foram preenchidos corretamente
 