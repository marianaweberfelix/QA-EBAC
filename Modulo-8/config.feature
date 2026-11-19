# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de um produto da EBAC-SHOP

  Cenário: Adicionar um produto configurado ao carrinho
    Quando seleciono uma cor e um tamanho
    E informo a quantidade de 2 unidades
    E clico no botão de comprar
    Então o produto deve ser adicionado ao carrinho

  Esquema do Cenário: Tentar comprar sem preencher uma seleção obrigatória
    Quando seleciono a cor "<cor>"
    E seleciono o tamanho "<tamanho>"
    E informo a quantidade "<quantidade>"
    E clico no botão de comprar
    Então o produto não deve ser adicionado ao carrinho

    Exemplos:
      | cor  | tamanho | quantidade |
      |      | M       | 2          |
      | Azul |         | 2          |
      | Azul | M       |            |

  Cenário: Comprar a quantidade máxima permitida
    Quando seleciono uma cor e um tamanho
    E informo a quantidade de 10 unidades
    E clico no botão de comprar
    Então a quantidade deve ser aceita

  Cenário: Tentar comprar mais de 10 unidades
    Quando seleciono uma cor e um tamanho
    E informo a quantidade de 11 unidades
    E clico no botão de comprar
    Então a quantidade não deve ser aceita

  Cenário: Limpar as configurações do produto
    Quando seleciono uma cor e um tamanho
    E altero a quantidade do produto
    E clico no botão "limpar"
    Então as configurações devem voltar ao estado original
