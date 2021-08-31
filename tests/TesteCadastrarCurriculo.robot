*** Settings ***
Resource            ../resources/Resource.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador

*** Test Cases ***
Caso de Teste 01: Cadastrar Curriculo com Sucesso
    Acessar a pagina home do site
    Entrar a pagina trabalhe conosco
    Clicar no botao cadastre seu currículo
    Preencher campos solicitados dados básicos nome "Aline Soares" cargo "Análista de testes Júnior" pretensão "3000"
    Preencher campos solicitados contatos email "aline.as385@gmail.com" cargo "40436671"
    Preencher campos solicitados endereço pais "Brasil" Estado "São Paulo" cidade "Diadema" Bairro "Eldorado" endereço "Rua das avencas" CEP "09973010"
    Preencher resumo "Olá sou Aline"
    Preencher campos formação nivel "Tecnólogo" Curso "Análise e Desenvolvimento de Sistemas" Instituição "Fatec Ipiranga" Período "2019" "Agosto" "2021" "Junho"
    Preencher redes sociais github "https://github.com/Aline595"
    Adicionar arquivo curriculo 
    Clicar no botão Finalizar
    Conferir se o curriculo foi cadastrado

Caso de Teste 02: Cadastrar Curriculo faltando arquivo curriculo
    Acessar a pagina home do site
    Entrar a pagina trabalhe conosco
    Clicar no botao cadastre seu currículo
    Preencher campos solicitados dados básicos nome "Aline Soares" cargo "Análista de testes Júnior" pretensão "3000"
    Preencher campos solicitados contatos email "aline.as385@gmail.com" cargo "40436671"
    Preencher campos solicitados endereço pais "Brasil" Estado "São Paulo" cidade "Diadema" Bairro "Eldorado" endereço "Rua das avencas" CEP "09973010"
    Preencher resumo "Olá sou Aline"
    Preencher campos formação nivel "Tecnólogo" Curso "Análise e Desenvolvimento de Sistemas" Instituição "Fatec Ipiranga" Período "2019" "Agosto" "2021" "Junho"
    Preencher redes sociais github "https://github.com/Aline595"
    Clicar no botão Finalizar
    Conferir mensagem de erro .Campo obrigatório

*** Keywords ***