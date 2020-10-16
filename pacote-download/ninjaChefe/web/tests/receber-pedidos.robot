
***Settings***
Documentation   Suite dos testes de Cadastro
...             Sendo um cozinheiro que possui produtos no dashboard
...             Quero receber solicitação de preparo dos meus produtos
...             Para que eu possa envia-los aos meus clientes

Resource        ../resources/base.robot

Library         RequestsLibrary

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Receber novo pedido
    Dado que "jorgetest@QA.com" é a minha conta de cozinheiro
    E "junitest@QA.com" é o email do meu cliente
    E que "Pizza" está cadastrado no meu dashboard
    Quando o cliente solicita o preparo desse prato
    Então devo receber uma notificação de pedido desse produto
    E posso aceitar ou rejeitar esse pedido

***Keywords***

Dado que "${email_cozinheiro} é a minha conta de cozinheiro"
    Set Test Variable       ${email_cozinheiro} 

    

E "${email_cliente} é o email do meu cliente"
    Set Test Variable       ${email_cliente}

E que "${produto} está cadastrado no meu dashboard"
    Set Test Variable       ${produto}

