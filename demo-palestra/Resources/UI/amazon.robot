*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${UrlAmazon}  https://www.amazon.com.br/
${Browser}  Chrome
${Title}  Amazon.com.br: compre celulares, TVs, computadores, livros, eBooks, e-readers Kindle e mais
${InptConsulta}  css=input[id="twotabsearchtextbox"]
${BtnConsultar}  css=form[name="site-search"] input[class="nav-input"]
${Busca}  Disgaea 4 Complete+: A Promise of Sardines Edition - Nintendo Switch

*** Keywords ***
Acessar site da Amazon
    Open Browser  ${UrlAmazon}  ${Browser}
    Title Should Be  ${Title} 

Realizar busca por jogo
    Input Text  ${InptConsulta}  ${Busca}
    Click Element  ${BtnConsultar}

Validar que o produto se encontra no resultado da consulta e acessar a oferta
    Wait Until Element Contains  css=h2 a span  ${Busca}  20
    Capture Page Screenshot
    Click Element  css=img[alt="${Busca}"]
    Wait Until Element Contains  css=span[id="productTitle"]  ${Busca}  20
    Capture Page Screenshot