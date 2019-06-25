*** Settings ***
Library                          Selenium2Library


*** Variables ***
${Anexar}                        css=.fa-paperclip
${Tipo Doc. Detalhe Exame}       css=.float-right > ul
${Tipo Doc. dados Exame}         css=.float-right > ul
${Anamnese Anexo dados Exame}    css=p-dropdownitem:nth-child(2) > li > span
${Abrir Seleção Arquivo}         css=input[id='file-input']
${IMAGE_DIR}                     C:\\\Automacao\\\A.Lite\\\Guide\\\Teste_Anexo\\\Anexo-Imagem.JPG
${EXE_DIR}                       C:\\\Automacao\\\A.Lite\\\Guide\\\Teste_Anexo\\\Anexo-Executavel.exe
${Fechar modal Anexo}            css=span[class="pi pi-times"]
${Elemento_MSG_Sucesso_Erro}     xpath=//*[@id="toast-container"]/div/div[2]
${Texto_MSG_Sucesso_EN}          Successfully saved
${Texto_MSG_Erro_EN}             An error ocurred, please try again
${Texto_MSG_Sucesso_PT}          Salvo com sucesso
${Texto_MSG_Erro_PT}             Ocorreu um erro, por favor tente novamente