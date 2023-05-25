#language: pt

Funcionalidade: Checkout
    Como um cliente EBAC
    Eu quero completar meu cadastro
    Para finalizar minha compra

Contexto: 
    Dado que eu estou na página de checkout


Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios
    Quando eu clico no botão Finalizar compra
    E os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>  não estão preenchidos
    Então deve ser exibido a mensagem "Deve ser preenchido os campos obrigatórios"
    Exemplos:

    |   nome    | sobrenome |    país    |  endereço  |  cidade   |   cep     |  telefone   |     email        |
    |  Marcelo  |   Arruda  |   Brasil   |    Rua Z   | São Paulo |  85900646 | 85996314574 | marcelo@ebac.com |
    |    Juan   |  Hernadez |   Espanha  |    Rua E   |   Madrid  |  78911657 | 35469713346 |   juan@ebac.com  |


Esquema do Cenário: Campo e-mail com formato inválido
    Quando eu preencho o campo email com <email>
    Então deve ser exibido a mensagem "Email inválido"
    Exemplos:

    | email      |

    | joao123.com | 
    | ebac@gmail |