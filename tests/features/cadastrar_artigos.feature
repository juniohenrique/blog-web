#language: pt

Funcionalidade: Cadastrar artigos
    Para que eu possa criar novos artigos que poderão ser exibidos no blog
    Sendo um publicador
    Posso cadastrar um novo artigo


    Cenario: Cadastrar novo artigo

        Dado que eu tenho um novo artigo
            |titulo| Novo artigo para testes|
            |imagem| http://lorempixel.com/300/300 |
            |descricao| Lorem Ipsum|
        Quando faço o cadastro deste artigo
        Então devo ver a mensagem "Artigo cadastrado com sucesso."

