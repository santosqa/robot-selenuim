*** Settings ***
Library    Selenium2Library


*** Variables ***
 ${ABA_Associar Exame}                     css=a[id='ui-tabpanel-3-label']
 ${Selecionar 2° chkbox associar exame}    css=:nth-child(2) > .ng-star-inserted:nth-child(1) > .temporal-row:nth-child(2) .ui-chkbox-box:nth-child(2)
 ${Selecionar 1° chkbox associar exame}    css=:nth-child(1) > .ng-star-inserted:nth-child(1) > .temporal-row:nth-child(2) .ui-chkbox-box:nth-child(2)
 ${Botão associar imagens}                 css=lite-images-image-assocation-actions > button > i
 ${Remover 1° chkbox associar exame}       css=tr:nth-child(4) > td:nth-child(1) > div > span > lite-images-image-assocation-actions > button > i
 ${Remover 2° chkbox associar exame}       css=tr:nth-child(5) > td:nth-child(1) > div > span > lite-images-image-assocation-actions > button > i
 
 ${ABA_Vínculo de laudos}                  css=a[id='ui-tabpanel-4-label']
 ${Selecionar 4° chkbox associar Laudo}    css=lite-images-medical-reports-link-actions > prime-checkbox > p-checkbox > div > div.ui-chkbox-box.ui-widget.ui-corner-all.ui-state-default
 ${Botão associar Laudo}                   css=tr:nth-child(3) > td:nth-child(1) > span > lite-images-medical-reports-link-actions
 ${Remover 4° chkbox associar Laudo}       css=tr:nth-child(4) > td:nth-child(1) > span > lite-images-medical-reports-link-actions
 ${Elemento_MSG_SucessoErro}               xpath=//*[@id="toast-container"]/div[2]/div[2]