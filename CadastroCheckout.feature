#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: 
    Dado que o usuario esta autenticado no site 


Esquema do Cenario: Cadastrar dados usuario valido 
Quando o usuario digitar o <nome> 
E o <sobrenome> 
E escolhe o <pais>
E o usuario digitar o <endereço> 
E o usuario digitar o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir a pagina "Pedido recebido" com os detalhes do pedido 

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  |
| maria       |  montano         | Brasil  | AV. imirim   #119               | apto 22A           | Sao Paulo     | Sao Paulo      | 02689122   | 991390066   |  testemaria@gmail.com |
| paulo       |  vega            | Brasil  | AV. proferora ida kolb  #322    | bloco B apto 73    | Sao Paulo     | Sao Paulo      | 02689122   | 991390066   |  paulo@gmail.com |



Esquema do Cenario: Cadastrar com nome vazio - invalido 
Quando o usuario nao digitar o nome <nome> 
E o <sobrenome> 
E escolhe o <pais>
E o usuario digitar o <endereço> 
E o usuario digitar o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios". 

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| <    >      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  |


Esquema do Cenario: Cadastrar com sobrenome vazio - invalido 
Quando o usuario digitar <nome> 
E não digitar o sobrenome <sobrenome > 
E escolhe o <pais>
E o usuario digitar o <endereço> 
E o usuario digitar o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios". 

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| <leslie>    |                  | Brasil  | rua Coronel Vieira de Castro    | casa  9            | São Paulo     | São Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  |


Esquema do Cenario: Cadastrar com pais vazio - invalido 
Quando o usuario digitar <nome> 
E o <sobrenome > 
E não escolhe <pais>
E o usuario digitar o <endereço> 
E o usuario digitar o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios". 

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Leslie      |    Cespedes      | <    >  | rua Coronel Vieira de Castro    | casa  9            | São Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  |


Esquema do Cenario: Cadastrar com endereço vazio - invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E o usuario não digitar o endereço <endereço> 
E o usuario digitar o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios". 
Exemplos:
| nome        |    sobrenome     | pais    | endereço        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Leslie      |    Cespedes      | Brasil  | <          >    | casa  9            | São Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  |


Esquema do Cenario: Cadastrar com cidade vazio - invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E o usuario digitar o <endereço> 
E o usuario digitar o <complemento>
E o usuario não digita <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios".



Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | <       >     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  |



Esquema do Cenario: Cadastrar com estado vazio - invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E digita o <endereço> 
E digitar o <complemento>
E digita <cidade>
E  não seleciona o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios".

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | <       >      | 02466110   | 991390066   |  testeu479@gmail.com  |



Esquema do Cenario: Cadastrar com CEP vazio - invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E digita o <endereço> 
E digitar o <complemento>
E digita <cidade>
E seleciona o <estado>
E não digita o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios".

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      |  <       > | 991390066   |  testeu479@gmail.com  |


Esquema do Cenario: Cadastrar com telefone vazio - invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E digita o <endereço> 
E digitar o <complemento>
E digita <cidade>
E seleciona o <estado>
E digita o <CEP>
E não digita o <telefone>
E o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios".


Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone    |     e-mail            |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   |  <       >    |  testeu479@gmail.com  |


Esquema do Cenario: Cadastrar com e-mail vazio - invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E digita o <endereço> 
E digitar o <complemento>
E digita <cidade>
E seleciona o <estado>
E digita o <CEP>
E digita o <telefone>
E não digita o <e-mail>
Entao deve exibir uma mensagem de alerta "Não e permitido campos vazios".

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail      |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   | 991390066   |  <       >      |


Esquema do Cenario: Cadastrar com e-mail invalido 
Quando o usuario digita <nome> 
E  <sobrenome > 
E escolhe <pais >
E digita o <endereço> 
E digitar o <complemento>
E digita <cidade>
E seleciona o <estado>
E digita o <CEP>
E digita o <telefone>
E não digita o <e-mail>
Entao deve exibir uma mensagem de erro "O email informado é inválido! Insira no seguinte formato: exemplo@dominio.com".

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail      |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479      |
