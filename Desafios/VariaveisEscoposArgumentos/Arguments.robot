*** Settings ***
Library   String

*** Variables ***
&{PESSOA}   nome=Larissa   sobrenome=Goncalves

*** Test Cases ***
Imprimindo um e-mail customizado e aleatório
    ${NOVO_EMAIL}    Criar e-mail customizado e aleatório    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console     ${NOVO_EMAIL}


*** Keywords ***
Criar e-mail customizado e aleatório
    [Arguments]       ${NOME}  ${SOBRENOME}
    ${ALEATORIO}      Generate Random String
    ${EMAIL_ALEATORIO}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIO}@email.me
    [Return]          ${EMAIL_ALEATORIO}