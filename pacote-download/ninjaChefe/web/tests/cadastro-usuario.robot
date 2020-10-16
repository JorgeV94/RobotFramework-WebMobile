***Settings***
Documentation   Suite dos testes de Cadastro

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases***
Cadastro Simples
    Dado que acesso a pagina principal
    Quando submeto o meu email "jorgetest@QA.com"
    Entao devo ser autenticado

##esse define a documentacao/orquestracao execucao e sequencia dos steps e os ganchos

Email Incorreto
    Dado que acesso a pagina principal
    Quando submeto o meu email "jorgetest&QA.com"
    Entao devo ver a mensagem "Oops. Informe um email válido!"

Email não informado
    Dado que acesso a pagina principal
    Quando submeto o meu email "${EMPTY}"
    Entao devo ver a mensagem "Oops. Informe um email válido!"