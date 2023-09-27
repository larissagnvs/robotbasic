*** Settings ***
Documentation       Desafio de Lista utilizando for.
Library    String


*** Variables ***
@{NUMEROS}    1    3    5    10    13    8


*** Test Cases ***
Impressão de números
    Imprimir números 5 e 10


*** Keywords ***
Imprimir números 5 e 10
    Log To Console  ${\n}
  
    FOR    ${numero}    IN   @{NUMEROS}
        IF  ${numero} == 5 or ${numero} == 10
            Log To Console    Eu sou o número ${numero}!
    ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
    END