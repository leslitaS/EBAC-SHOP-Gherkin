#language: pt

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Contexto:
Dado que o usuario possui uma conta no portal EBAC-SHOP


Esquema do Cenario: Autenticacao valida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve ser direcionado para a tela de checkout
Exemplos:
| usuario                  |    senha         |  
| "testeu479@gmail.com "   |  "senha@123"     |  


Esquema do Cenario:  Autenticacao invalida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve exibir a mensagem <mensagem>

Exemplos:
| usuario               |    senha         |      mensagem                         |
| "jasdf@ebac.com.br"   |  "senha@123"     | "usuario ou senha invalidos"          | 
| "testeu479@gmail.com" |  "senha@afss"    | "usuario ou senha invalidos"          | 
|                       |                  | "Campos obrigatorios, usuario e senha | 