*** Settings ***
Library          Selenium2Library


*** Variables ***
 ${Botão Logoff}           	    css=i[class='fas fa-caret-down']
 ${Botão Sair Logoff}           css=div.default-popover-content > ul
 ${ElementoMsgLogoff}        	css=div[class='ui-toast-detail']    
 ${TextoMgsLogoff}           	Page not found    #Sessão finalizada com sucesso
 ${ElementoSubmit}              css=button[class="formly-submit ng-star-inserted"]