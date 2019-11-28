*** Settings ***
Resource  ../../Resources/API/rest.robot

*** Test Cases ***
Cenario 1: Consulta por id de usuario usando REST
    [Tags]  API
    Dado que faço uma consulta por um usuario existente
    Entao visualizo os dados do usuario cadastrado

Cenario 2: Consulta por id de filme usando REST
    [Tags]  API
    Dado que faço um consulta por um id de filme
    Entao visualizo os dados do filme pesquisado
    