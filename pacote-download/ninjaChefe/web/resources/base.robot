***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o selenium é importado aqui 

Library     SeleniumLibrary
Resource    elements.robot
Resource    Kws.robot
Resource    helpers.robot

***Variables***
${base_url}         http://ninjachef-qaninja-io.umbler.net/

***Keywords***
##Hooks
Open Session
    Open Browser    about:blank     Chrome   executable_path=/Users/jorgevieira/chromedriver

Close Session
    Capture Page Screenshot
    Close Browser

