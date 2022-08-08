#language: pt

@regression
@registration
Funcionalidade: Cadastro de usuários
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO realizar um cadastro
    PARA logar na aplicação

    Contexto: 
        Dado que esteja na home
        E avance para a página de autenticação

    @register_validate
    Cenário: Validar e-mail do usuário
        Quando inserir o e-mail válido
        Então será redirecionado à página de cadastro

    @register_validate
    Esquema do Cenário: Concluir cadastro do usuário
        Dado que esteja na página de cadastro
        Quando for preenchido todos os campos necessários
        Então o usuário será cadastrado

      