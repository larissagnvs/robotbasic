*** Settings ***
Documentation       Test suite using list-type variables.
Library    String

*** Variables ***
@{MONTHS}    january
...        february
...        march
...        april
...        may
...        june
...        july
...        august
...        september
...        october
...        november
...        december

*** Test Cases ***
Teste Case I
    Print months of the year in console


*** Keywords ***
Print months of the year in console
    Log To Console     Month 1: ${MONTHS[0]}
    Log To Console     Month 2: ${MONTHS[1]}
    Log To Console     Month 3: ${MONTHS[2]}
    Log To Console     Month 4: ${MONTHS[3]}
    Log To Console     Month 5: ${MONTHS[4]}
    Log To Console     Month 6: ${MONTHS[5]}
    Log To Console     Month 7: ${MONTHS[6]}
    Log To Console     Month 8: ${MONTHS[7]}
    Log To Console     Month 9: ${MONTHS[8]}
    Log To Console     Month 10: ${MONTHS[9]}
    Log To Console     Month 11: ${MONTHS[10]}
    Log To Console     Month 12: ${MONTHS[11]}

