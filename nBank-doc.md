# Desafio: Automatizar dois cenários na Webapp nBank


### Cenario 1: Saldo
Quando acesso a home nBank
Então devo ver meu saldo inicial no valor de R$ 1000

### Cenario 2: Fazer PIX
Dado que meu saldo é de R$ 1000
E acesso a home nBank
Quando faço um PIX no valor de R$ 100
Então meu saldo final deve ser de R$ 900
E a transação em questão é adicionada no meu Extrato

### Cenario 3: PIX com valor ZERO
Dado que meu saldo é de R$ 1000
E acesso a home nBank
Quando faço um PIX no valor de R$ 0
Então vejo a mensgem de alerta "Oops. Transferir ZERO é osso hein..."

### Cenario 4: PIX com valor NEGATIVO
Dado que meu saldo é de R$ 1000
E acesso a home nBank
Quando faço um PIX no valor de R$ -1
Então vejo a mensgem de alerta "Oops. Valor para PIX incorreto..."
