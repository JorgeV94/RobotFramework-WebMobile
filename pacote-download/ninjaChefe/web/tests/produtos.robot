***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinha-los para outras pessoas

Resource        ../resources/base.robot

Test Setup      Login Session           jorgetest@QA.com
Test Teardown   Close Session

***Variables***
&{Nhoque}=          img=nhoque.jpg     nome=Nhoque molha páprica       tipo=Massas     preco=20.00
#uma unica já tem a massa de teste. É chamado de dicionario do robot, pois tem a chave e valor
#Criado com o & uma variavel comum se cria com $
***Test Cases***
Novo prato
    Dado que "${Nhoque}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard
