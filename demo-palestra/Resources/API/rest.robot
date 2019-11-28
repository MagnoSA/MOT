*** Settings ***
Library  REST

*** Variables ***
${Endpoint}  https://jsonplaceholder.typicode.com
${Endpoint2}  http://www.omdbapi.com
${ID_DO_FILME}  tt1285016 
${API_KEY}  2e325235

*** Keywords ***
Dado que faço uma consulta por um usuario existente
    GET  ${Endpoint}/users/1

Entao visualizo os dados do usuario cadastrado
    # Output schema   response body
    Integer     response body id          1
    String      response body name        Leanne Graham

Dado que faço um consulta por um id de filme
    ${response}  GET  ${Endpoint2}/?apikey=${API_KEY}&i=${ID_DO_FILME}
    ${data}  Get Variable Value  ${response["body"]}
    Set Test Variable  ${data}

Entao visualizo os dados do filme pesquisado
    Should Be Equal As Strings  ${data["Title"]}  The Social Network
    Should Be Equal As Strings  ${data["Year"]}  2010