*** Settings ***
Documentation       Test suite using dictionary-type variables.
Library    String

*** Variables ***
&{MONTHS}    month1=january    daysjan=31
...          month2=february   daysfeb=28
...          month3=march      daysmar=31
...          month4=april      daysapr=30
...          month5=may        daysmay=31
...          month6=june       daysjun=30
...          month7=july       daysjul=31
...          month8=august     daysaug=31
...          month9=september  dayssep=30
...          month10=october   daysoct=31
...          month11=november  daysnov=30
...          month12=december  daysdec=31

*** Test Cases ***

Teste Case I
    Print months of the year and your days in console


*** Keywords ***
Print months of the year and your days in console
    Log To Console     ${MONTHS.month1} has ${MONTHS.daysjan} days
    Log To Console     ${MONTHS.month2} has ${MONTHS.daysfeb} days
    Log To Console     ${MONTHS.month3} has ${MONTHS.daysmar} days
    Log To Console     ${MONTHS.month4} has ${MONTHS.daysapr} days
    Log To Console     ${MONTHS.month5} has ${MONTHS.daysmay} days
    Log To Console     ${MONTHS.month6} has ${MONTHS.daysjun} days
    Log To Console     ${MONTHS.month7} has ${MONTHS.daysjul} days
    Log To Console     ${MONTHS.month8} has ${MONTHS.daysaug} days
    Log To Console     ${MONTHS.month9} has ${MONTHS.dayssep} days
    Log To Console     ${MONTHS.month10} has ${MONTHS.daysoct} days
    Log To Console     ${MONTHS.month11} has ${MONTHS.daysnov} days
    Log To Console     ${MONTHS.month12} has ${MONTHS.daysdec} days