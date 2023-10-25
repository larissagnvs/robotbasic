*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${BROWSER}    chrome
${URL}    http://www.amazon.com.br
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold']
${ADD_PRODUTO}    //a[contains(.,'Console Xbox Series S')]
${CARRINHO}    //a[contains(@data-csa-c-type,'button')]
${REMOVER_PRODUTO}    //input[@value='Excluir']


*** Keywords ***

Abrir o navegador
    Open Browser    browser=${BROWSER}   options=add_argument("--force-device-scale-factor=0.80")
    Maximize Browser Window

Fechar o navegador
    Close Browser




Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}


Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}


Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}


Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}


Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']




Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button


Verificar se o resultado da pesquisa está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]




Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=${ADD_PRODUTO}
    Wait Until Element Is Visible    locator=productTitle
    Click Element    locator=add-to-cart-button

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//span[contains(.,'Adicionado ao carrinho')]




Remover o produto "${PRODUTO}" do carrinho
    Click Element    locator=${CARRINHO}
    Click Element    locator=${REMOVER_PRODUTO}

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//h1[contains(.,'Seu carrinho de compras da Amazon está vazio.')]



= GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
Acessar a home page do site Amazon.com.br
Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
Quando acessar o menu "Eletrônicos"
Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
Verificar se aparece a frase "Eletrônicos e Tecnologia"
E a categoria "Computadores e Informática" deve ser exibida na página
Verificar se aparece a categoria "Computadores e Informática"


Quando pesquisar pelo produto "Xbox Series S"
Digitar o nome de produto "Xbox Series S" no campo de pesquisa
Clicar no botão de pesquisa

Então o produto da linha "Console Xbox Series S" deve ser mostrado na página
Verificar se o resultado da pesquisa está listando o produto "Console Xbox Series S"


Quando adicionar o produto "Console Xbox Series S" no carrinho
Digitar o nome de produto "Xbox Series S" no campo de pesquisa
Clicar no botão de pesquisa
Verificar se o resultado da pesquisa está listando o produto "Console Xbox Series S"
Adicionar o produto "Console Xbox Series S" no carrinho

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso


E existe o produto "Console Xbox Series S" no carrinho
Quando adicionar o produto "Console Xbox Series S" no carrinho
Então o produto "Console Xbox Series S" deve ser mostrado no carrinho


Quando remover o produto "Console Xbox Series S" do carrinho
Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
Verificar se o carrinho fica vazio   
