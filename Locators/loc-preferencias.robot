*** Settings ***
Library                             Selenium2Library
library                             BuiltIn


*** Variables ***
${Element_Usuário_Header}           css=div:nth-of-type(4) default-popover.alliance-default-popover button.btn.btn-sm
${element}                          css=link[id="theme-css"]
${configurações}                    css=i[class="fas fa-cog"]
${Personalização}                   css=i[class="fas fa-edit"]
${Options_Themes}                   css=i[class="fas fa-adjust"]
${campo_tema}                       css=input[id="formly_1_input_platform.theme_0"]
${salvar_tema}                      css=button[class="formly-submit ng-star-inserted"]
${Pure_Theme}                       pure
${Dark_Theme}                       dark
${Theme_Element_href}               Xpath=//*[@id="theme-css"]
${href_Pure_theme}                  http://192.168.102.203:8070/assets/themes/pure/theme.css
${href_Dark_theme}                  http://192.168.102.203:8070/assets/themes/dark/theme.css
${Elemento_MSG_Tema_Alterado}       //*[@id="toast-container"]/div/div[2]
${Texto_MSG_Sucesso_EN}             Successfully saved
${Texto_MSG_Sucesso_PT}             Salvo com sucesso
${Texto_MSG_Erro_EN}                An error ocurred, please try again
${Options_Languages}                css=i[class="fas fa-language"]
${campo_Languages}                  css=input[id="formly_1_input_platform.language_0"]
${pt-BR}                            pt-BR
${salvar_idioma}                    css=button[class='formly-submit ng-star-inserted']
${botão_voltar_tela_Idioma}         css=settings-save > div > button