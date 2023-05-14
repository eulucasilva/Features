#language: pt

Funcionalidade: Checkout
    Como um cliente EBAC
    Eu quero completar meu cadastro
    Para finalizar minha compra

Contexto: 
    Dado que eu estou na página de checkout


Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios
    Quando eu clico no botão Finalizar compra
    E o <campo> não está preenchido
    Então deve ser exibido a mensagem "Deve ser preenchido os campos obrigatórios"

    | campo      |

    | nome      | 
    | sobrenome |
    | país      |
    | endereço  |
    | cidade    |
    | cep       |
    | telefone  |
    | email     |

Esquema do Cenário: Campo e-mail com formato inválido
    Quando eu preencho o campo email com <email>
    Então deve ser exibido a mensagem "Email inválido"

    | email      |

    | joao123.com | 
    | ebac@gmail |