***Settings***
Library        SeleniumLibrary

***Variables***
${URL}          https://www.primecontrol.com.br/
${BROWSER}      chrome
${FILE}         C:\\Users\\Aline\\Desktop\\cv-aline-soares.pdf

**Keywords***

Abrir navegador
   Open Browser     about:blank     ${BROWSER}

Fechar navegador
    Close Browser

Acessar a pagina home do site
    Go To              ${URL}
    Maximize Browser Window  
    Title Should Be     Prime Control - Experts em Qualidade Digital

Entrar a pagina trabalhe conosco
   Click Element                        xpath=//*[@id="menu-item-875"]/a[text()="CONTATO"]
   Click Element                        xpath=//*[@id="menu-item-2156"]/a
   Wait Until Page Contains Element     css:#logo > img
   Title Should Be                      Trabalhe conosco - Prime Control
   
Clicar no botao cadastre seu currículo
   Click Element   css:#king-225823 > div > div:nth-child(2) > div > div:nth-child(3) > a

Preencher campos solicitados dados básicos nome "${NOME}" cargo "${CARGO}" pretensão "${PRETENSAO_SALARIAL}"
    Switch Window     Cadastre seu currículo- Prime Control
    Input Text        css:#name                                 ${NOME}
    Input Text        id=headline                               ${CARGO}
    Input Text        id=salary                                 ${PRETENSAO_SALARIAL}

Preencher campos solicitados contatos email "${EMAIL}" cargo "${TELEFONE}"
    Input Text  id=email            ${EMAIL}
    Input Text  id=phone-0          ${TELEFONE}

Preencher campos solicitados endereço pais "${PAIS}" Estado "${ESTADO}" cidade "${CIDADE}" Bairro "${BAIRRO}" endereço "${ENDEREÇO}" CEP "${CEP}"
    Select From List By Label    id=country           ${PAIS}
    Input Text                   id=region            ${ESTADO}
    Input Text                   id=city              ${CIDADE}
    Input Text                   id=neighborhood      ${BAIRRO}
    Input Text                   id=address           ${ENDEREÇO}
    Input Text                   id=zipcode           ${CEP}

Preencher resumo ${RESUMO}
    Input Text  id=summary         ${RESUMO}

Preencher campos formação nivel "${FORMACAO}" Curso "${CURSO}" Instituição "${INSTITUICAO}" Período "${ANO_INI}" "${MES_INI}" "${ANO_FIM}" "${MES_FIM}"
    Click Element                   xpath=//*[@id="__layout"]//fieldset[5]//button[text()="+ Adicionar formação"]
    Wait Until Element Is Visible   xpath=//*[@id="__layout"]//fieldset[5]/div[2]
    Select From List By Label       id=education_degree-0          ${FORMACAO} 
    Input Text                      id=course-0                  ${CURSO}
    Input Text                      id=institution-0             ${INSTITUICAO}
    Click Element                   css:#__layout > div > div > section > div > div > form > fieldset:nth-child(6) > div.col-md-9 > div > div > div > div:nth-child(5) > div > div > div:nth-child(1) > div > div > div.input-group > input
    Click Element                   xpath=//*[@id="__layout"]/div/div/section/div/div/form/fieldset[5]/div[2]/div/div/div/div[4]/div/div/div[1]/div/div/div[3]/header/span[1]
    Click Element                   xpath=//*[@id="__layout"]//fieldset[5]//span[text()="2018"]
    Click Element                   xpath=//*[@id="__layout"]//fieldset[5]//span[text()="Agosto"]
    Click Element                   id=incomplete-0

Preencher redes sociais github "${GITHUB}"
    Click Element   css:#__layout > div > div > section > div > div > form > fieldset:nth-child(8) > div.col-md-9 > div > button
    Input Text      css:#__layout > div > div > section > div > div > form > fieldset:nth-child(8) > div.col-md-9 > div > div > div > div > div.flex-grow-1.mr-1 > input         ${GITHUB}

Adicionar arquivo curriculo 
    Choose File                     css:#validatedCustomFile  ${FILE}
    Wait Until Element Is Visible   xpath=//*[@id="__layout"]//div[@class="alert alert-warning"]

Clicar no botão Finalizar
    Click Button                    xpath=//*[@id="__layout"]//button[@type="submit"]

Conferir mensagem de erro ${ERRO}
    Wait Until Element Is Visible   css:#__layout > div > div > section > div > div > form > fieldset:nth-child(9) > div.col-md-9 > div > small 
    Title Should Be                 Cadastre seu currículo- Prime Control
    Element Text Should Be          css:#__layout > div > div > section > div > div > form > fieldset:nth-child(9) > div.col-md-9 > div > small      ${ERRO}

Conferir se o curriculo foi cadastrado
    Wait Until Element Is Visible   xpath=//*[@id="__layout"]//h2
    Element Text Should Be          xpath=//*[@id="__layout"]//h2/span       com sucesso