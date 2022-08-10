#language: pt

@regression
@registration
Funcionalidade: Cadastro de usuários
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO realizar um cadastro
    PARA logar na aplicação
    
    Contexto:
        Dado que esteja na página de autenticação
        E insira um e-mail válido e clique em prosseguir com cadastro

    @register_validate
    Cenário: Validar cadastro do usuário
        Quando for preenchido todos os campos necessários
        E clicar em register
        Então o usuário será cadastrado


      