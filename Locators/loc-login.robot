*** Settings ***
Library          Selenium2Library


*** Variables ***
 ${URL}                    					http://192.168.102.203:8070/#/    
 #${URL}                                    http://54.207.39.250/#/
 ${Browser}               					gc
 ${Campo_usuário}          					id=formly_2_input_username_0
 ${Campo_senha}            					id=formly_2_input_password_1
 ${Usuário_inválido}       					Mester
 ${Senha_válida}           					master
 ${Usuário_válido}         				    master 	
 ${Senha_inválida}         					111111
 ${Usuário_Qualidade}         				qualidade
 ${Senha_Qualidade}         				quali1056
 ${Botão_entrar}           					css=button[class='formly-submit ng-star-inserted']
 ${caracteres_especiais}   					'@$#%&
 ${Elemento_msg_Erro_login}   				xpath=//*[@id="toast-container"]/div[1]/div[2]
 ${Texto_erro_login_PT}      			    Ocorreu um erro! Por favor tente novamente ou contate o suporte
 ${Texto_erro_user_login_EN}                That account doesn't exist.
 ${Texto_erro_key_login_EN}                 Wrong password.
 ${Alerta usuário Obrigatório}   			css=formly-field:nth-child(1) > formly-wrapper-primeng-form-field > div.ui-message.ui-messages-error.ng-star-inserted
 ${Texto usuário Obrigatório}    			User is required     #Usuário é obrigatório
 ${Alerta Senha Obrigatória}     			css=formly-field:nth-child(2) > formly-wrapper-primeng-form-field > div.ui-message.ui-messages-error.ng-star-inserted
 ${Texto Senha Obrigatória}      			Password is required    #Senha é obrigatório
 ${Bem Vindo}                      			dashboard works!    #Bem vindo {{ user }}
 ${title_alliance}                          Alliance
 ${Ativa AD}                                css=button[class='btn btn-default btn-sm ng-star-inserted']
 ${Senha_AD_válida}           				Fernando@123
 ${Usuário_AD_válido}                       rodrigo.santos@wtt.local
 ${Desativa_AD}                             button[class="btn btn-default btn-sm ng-star-inserted active-login-provider"]
