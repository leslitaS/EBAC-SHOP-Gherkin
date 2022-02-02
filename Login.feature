#language: pt

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Contexto:
Dado que o usuario possui uma conta no portal EBAC-SHOP

Cenario: Autenticacao valida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve ser direcionado para a tela de checkout

Cenario: Usuario inexistente 
Quando eu digitar o usuario inexistente "jasdf@ebac.com.br"
E a senha "senha@123"
Entao deve exibir uma mensagem de alerta "usuario ou senha invalidos"

Cenario: Senha invalida
Quando eu digitar o usuario "leslie@ebac.com.br"
E a senha "senha@afss"
Entao deve exibir uma mensagem de alerta "usuario ou senha invalidos"
