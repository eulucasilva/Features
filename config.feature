#language: pt

Funcionalidade: Configuração do produto
    Como um cliente EBAC
    Eu quero configurar o produto de acordo com meu gosto e tamanho
    E escolher a quantidade
    Para depois inserir no carrinho

Contexto: Dado que eu estou na página do produto

Esquema do Cenário: Seleção de cor, tamanho e quantidades devem ser obrigatórios
    Quando eu clico no botão Comprar
    E o <campo> não está preenchido
    Então deve ser exibido a mensagem Campo obrigatório

    | campo      |

    | cor        | 
    | tamanho    |
    | quantidade |

Cenário: Deve permitir apenas 10 produtos por venda
    Quando eu preencho o formulário
    E coloco a quantidade do produto maior que 10
    Então o sistema deve exibir uma mensagem de alerta "Só pode ser comprado, no máximo 10 produtos por venda"

Cenário: Deve voltar ao estado original ao clicar em "Limpar"
    Quando eu preencho o formulário com alguns dados
    E clico no botão Limpar
    Então o sistema deve exibir o formulário no seu formato original