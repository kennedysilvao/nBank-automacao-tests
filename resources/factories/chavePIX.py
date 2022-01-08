
def factory_chave_pix_correta():
    chavePixCorreta = {
        "banco": "Neon",
        "chave": "019.341.441-09",
        "valor": "250"
    }
    return chavePixCorreta;

def factory_chave_pix_valor_zero():
    chavePixVrZero = {
        "banco": "Neon",
        "chave": "019.341.441-09",
        "valor": "0"
    }
    return chavePixVrZero;

def factory_chave_pix_valor_negativo():
    chavePixVrNegativo = {
        "banco": "Neon",
        "chave": "019.341.441-09",
        "valor": "-1"
    }
    return chavePixVrNegativo;

def factory_chave_pix_valor_maior_que_atual():
    chavePixVrMaiorQAtual = {
        "banco": "Neon",
        "chave": "019.341.441-09",
        "valor": "2500"
    }
    return chavePixVrMaiorQAtual;