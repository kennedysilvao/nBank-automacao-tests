*Settings*
Documentation       Suíte de testes para realizar o PIX

Library     ${EXECDIR}/resources/factories/chavePIX.py

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session

Test Teardown       End Session

*Test Cases*
Devo realizar um PIX

    ${chavePIX}     Factory Chave Pix Correta

    Ir Para Pagina Principal
    Verificar Saldo   
    Acessar Área de Transferencia PIX
    Preencher os Campos PIX  ${chavePIX}
    Enviar PIX
    Verificar Valor Extrato  ${chavePIX}

Devo tentar realizar um pix com valor ZERO

    ${chavePIX}     Factory Chave Pix Valor Zero

    Ir Para Pagina Principal
    Verificar Saldo
    Acessar Área de Transferencia PIX
    Preencher os Campos PIX  ${chavePIX}
    Enviar PIX
    Verificar Texto Mensagem  Oops. Transferir ZERO é osso hein...

Devo tentar realizar um pix com valor maior que o saldo

    ${chavePIX}     Factory Chave Pix Valor Maior Que Atual

    Ir Para Pagina Principal
    Verificar Saldo
    Acessar Área de Transferencia PIX
    Preencher os Campos PIX  ${chavePIX}
    Enviar PIX
    Verificar Texto Mensagem  Oops. Saldo insuficiente :(


Devo fazer um pix com valor NEGATIVO
    
    ${chavePIX}     Factory Chave Pix Valor Negativo

    Ir Para Pagina Principal
    Verificar Saldo
    Acessar Área de Transferencia PIX
    Preencher os Campos PIX  ${chavePIX}
    Enviar PIX
    Verificar Texto Mensagem  Oops. Valor para PIX incorreto...


