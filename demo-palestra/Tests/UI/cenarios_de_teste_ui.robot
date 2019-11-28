*** Settings ***
Resource  ../../Resources/UI/amazon.robot

Test Teardown  Close Browser

*** Test Cases ***
Realizar busca no site da Amazon
    [Tags]  UI
    Acessar site da Amazon
    Realizar busca por jogo
    Validar que o produto se encontra no resultado da consulta e acessar a oferta