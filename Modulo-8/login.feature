# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login da EBAC-SHOP

  Cenário: Realizar login com dados válidos
    Quando informo um usuário válido
    E informo a senha correta
    E clico no botão de login
    Então devo ser direcionado para a tela de checkout

  Esquema do Cenário: Tentar login com dados inválidos
    Quando informo o usuário "<usuario>"
    E informo a senha "<senha>"
    E clico no botão de login
    Então devo visualizar a mensagem "Usuário ou senha inválidos"

    Exemplos:
      | usuario          | senha         |
      | usuario_invalido | senha_correta |
      | usuario_valido   | senha_errada  |
