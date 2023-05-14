#language: pt

Funcionalidade: Login
    Como um cliente EBAC
    Eu quero fazer login na plataforma
    Para ver meus pedidos 

Contexto:
    Dado que eu acesso a página de autenticação do portal da EBAC

Cenário: Login com sucesso
    Quando eu digito o usuário "lucas@ebac.com"
    E senha "pass@123"
    Então deve ser direcionado para a página de checkout

Cenário: Login sem sucesso
    Quando eu digito o usuário "lucas@ebac.com"
    E senha "senha@123"
    Então deve exibir a mensagem "User or password incorrect"