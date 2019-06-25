*** Settings ***
Library          Selenium2Library


*** Variables ***
 ${Table Row}                               css=.alliance-table > .ui-table-wrapper > table > tbody > tr:first-child a 
 ${Sandwich}                       			css=button[class='btn border-0 bg-transparent text-light']
 ${Diagnósticos}                   			css=a[id="diagnostics"]
 #xpath=//*[contains(text(), " Diagnósticos ")] 
 ${Exames}                                  css=a[id="diagnostics-lite-images"]
 ${paginação}                      			css=a[class='ui-paginator-page ui-paginator-element ui-state-default ui-corner-all ng-star-inserted'] 
 ${Abrir detalhe}                  			css=i[class='fas fa-arrow-alt-circle-right extended-icon']
 ${Séries}                         			id=totalseries
 ${Abrir Exame}                    			css=i[class='fas fa-sign-in-alt ng-star-inserted']
 ${Lista_de_Templates}                   	css=i[class="fas fa-list-alt fa-lg"]
 ${Página 1}                       			css=span > a:nth-child(1)
 ${Página 2}                       			css=span > a:nth-child(2)
 ${Página 3}                       			css=span > a:nth-child(3)
 ${Próxima Página}                 			css=a.ui-paginator-next.ui-paginator-element.ui-state-default.ui-corner-all
 ${Página Anterior}                			css=a.ui-paginator-prev.ui-paginator-element.ui-state-default.ui-corner-all
 ${Ir para última Página}          			css=a.ui-paginator-last.ui-paginator-element.ui-state-default.ui-corner-all
 ${Ir para Primeira Página}        			css=a.ui-paginator-first.ui-paginator-element.ui-state-default.ui-corner-all
 ${Abrir Data Nascimento}          			css=th:nth-child(3) > lite-images-listing-filters > form > prime-datepicker
 ${Seleção data Hoje}              			css=div:nth-child(1) > button > span
 ${Resetar data}                   			xpath=//*[contains(text(), "Reset")]
 ${Abrir gênero}                   			css=div.ui-table-wrapper.ng-star-inserted > table > thead > tr:nth-child(2) > th:nth-child(4) > lite-images-listing-filters > form
 ${selecinar masculino}            			css=p-dropdownitem:nth-child(2) > li > span
 ${selecinar feminino}             			css=p-dropdownitem:nth-child(1) > li > span
 ${Resetar filtro}                 			css=p-dropdown > div > i
 ${Abrir data Exame}               			css=th:nth-child(8) > lite-images-listing-filters > form > prime-datepicker
 ${Abrir filtro Status}            			css=tr:nth-child(2) > th:nth-child(9)
 ${Selecionar Status Associado}    			css=p-dropdownitem:nth-child(1) > li > span
 ${Selecionar Status Agendado}     			css=p-dropdownitem:nth-child(2) > li > span
 ${Selecionar Status Finalizado}   			css=p-dropdownitem:nth-child(3) > li > span
 ${Selecionar Status À Laudar}     			css=p-dropdownitem:nth-child(4) > li > span
 ${Busca_paciente}                 			css=th:nth-child(2) > lite-images-listing-filters > form > default-input > input
 ${Abre_resultado_Busca_paciente}           css=tr[id='57990501808e98b7df60f1b6559876b6']
 ${Busca Origem}                   			css=th:nth-child(5) > lite-images-listing-filters > form > default-input > input
 ${Busca Descrição}                			css=th:nth-child(6) > lite-images-listing-filters > form > default-input > input
 ${Busca Modalidade}               			css=th:nth-child(7) > lite-images-listing-filters > form > default-input > input
 ${Remover Todos Filtros}          			css=i[class='fas fa-times-circle'] 
 