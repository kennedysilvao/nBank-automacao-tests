*Settings*
Documentation       Ações que poderão ser usadas em vários arquivos

*Keywords*
Ir Para Pagina Principal
    Go To       ${BASE_URL}

    Wait For Elements State     css=.carousel       visible     5

Verificar Saldo
    
    Wait For Elements State
    ...     css=.navbar-item >> text=Olá Papito, seu saldo é R$ 1000
    ...     visible         5


Acessar Área de Transferencia PIX

    click       css=a.button >> text=Fazer PIX

    Wait For Elements State
    ...     css=.modal-card img
    ...     visible     5

Preencher os Campos PIX
    [Arguments]     ${chavePIX}

    Select Options By       css=.field select       text        ${chavePIX}[banco]
    Fill Text       id=chave-pix    ${chavePIX}[chave]
    Fill Text       id=valor        ${chavePIX}[valor]

Enviar PIX
    Click       css=button >> text="Enviar PIX"

Verificar Valor Extrato
    [Arguments]     ${chavePIX}

    ${element}      Set Variable        xpath=//td[contains(text(), "${chavePIX}[chave]")]/..

    Wait For Elements State         ${element}      visible     5
    Get Text        ${element}      contains        ${chavePIX}[banco]
    Get Text        ${element}      contains        ${chavePIX}[chave]
    Get Text        ${element}      contains        ${chavePIX}[valor]

Verificar Texto Mensagem
    [Arguments]     ${expected_message}

    ${element}      Set Variable        css=.message-body

    Wait For Elements State     ${element}      visible     5
    Get Text        ${element}      equal       ${expected_message}