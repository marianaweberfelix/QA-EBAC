# language: pt

Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de checkout da EBAC-SHOP

  Cenário: Realizar cadastro com os dados obrigatórios preenchidos
    Quando preencho todos os campos marcados com asterisco
    E informo um e-mail válido
    E confirmo o cadastro
    Então o cadastro deve ser aceito

  Esquema do Cenário: Tentar cadastro com e-mail inválido
    Quando preencho todos os campos obrigatórios
    E informo o e-mail "<email>"
    E confirmo o cadastro
    Então o cadastro não deve ser aceito
    E devo visualizar uma mensagem de erro

    Exemplos:
      | email         |
      | mariemail.com |
      | mari@         |
      | @email.com    |

  Cenário: Tentar cadastro com campos obrigatórios vazios
    Quando deixo um ou mais campos obrigatórios vazios
    E preencho os demais campos corretamente
    E confirmo o cadastro
    Então devo visualizar uma mensagem de alerta
    E o cadastro não deve ser concluído
