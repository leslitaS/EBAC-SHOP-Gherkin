#language: pt

Funcionalidade: Configurar meu produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
    Dado que o usuario esta autenticado no site 

Cenario: Configuracao valida
Quando o ususario selecciona um produto
E o usuario escolhe a <cor>
E o usuario escolhe o <tamanho>
E  o usuario escolhe a <quantidade>
Entao o produto deve ser inserido no carrinho

Cenario: Configuracao cor invalida
Quando o ususario selecciona um produto
E o usuario seleciona o <tamanho>
E  o usuario seleciona a <quantidade>
Entao deve exibir uma mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

Cenario: Configuracao tamanho invalido
Quando o ususario selecciona um produto
E o usuario escolhe a <cor>
E  o usuario seleciona a <quantidade>
Entao deve exibir uma mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

Cenario: Configuracao quantidade invalida
Quando o ususario selecciona um produto
E o usuario seleciona a <cor>
E o usuario seleciona o <tamanho>
Entao deve exibir uma mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

Cenario: Configuracao quantidade maior a 10 invalida
Quando o ususario selecciona um produto
E o usuario escolhe a <cor>
E o usuario escolhe o <tamanho>
E  o usuario escolhe "11" como quantidade do produto
Entao deve exibir uma mensagem de alerta "E permitido apenas 10 produtos por venda."

Cenario: Limpiar dados
Quando o ususario selecciona um produto
E o usuario escolhe a <cor>
E o usuario escolhe o <tamanho>
E o usuario escolhe a <quantidade>
E clicar no botão “limpar”
Entao os dados do produto voltam ao estado original
 