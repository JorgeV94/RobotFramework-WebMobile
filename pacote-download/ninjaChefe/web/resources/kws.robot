***Settings***
Documentation       Aqui teremos todas as palavras chaves de automacao do comportamentos

***Keywords***
Dado que acesso a pagina principal
    Go To        ${base_url}

Quando submeto o meu email "${email}"
    Input Text      ${CAMPO_EMAIL}    ${email}
    Click Element   ${BOTAO_ENTRAR}

Entao devo ser autenticado
    Wait Until Page Contains Element    ${DIV_DASH}
    Close Browser
    
Entao devo ver a mensagem "${expect_message}"
    Wait Until Element Contains     ${DIV_ALERT}     ${expect_message}

#cadastro de pratos

Dado que "${produto}" é um dos meus pratos
    Set Test Variable       ${produto} 
    #a variavel produto vai ficar disponivel durante a execucao do teste case

Quando faço o cadastro desse item
    Wait Until Element Is Visible       ${BOTAO_ADD}       5
    #aguarda o elemento ficar visivel
    Click Element                       ${BOTAO_ADD}
    Choose File         ${CAMPO_FOTO}     ${EXECDIR}/resources/images/${produto['img']}
    #EXECDIR pega o diretorio em que está sendo rodado o prog

    Input Text          ${CAMPO_NOME}         ${produto['nome']}
    Input Text          ${CAMPO_TIPO}        ${produto['tipo']}
    Input Text          ${CAMPO_PRECO}        ${produto['preco']}
    Click Element       ${BOTAO_CADASTRAR}


Então devo ver este prato no meu dashboard
    Wait Until Element Contains     ${DIV_LISTA}      ${produto['nome']}