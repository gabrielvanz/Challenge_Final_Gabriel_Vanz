#language: pt

@regression
@login
Funcionalidade: Login via E-mail
    COMO um usuário do Ecommerce Automation Pratice  
    QUERO me autenticar na aplicação
    PARA realizar compras

    Contexto:
        Dado que esteja na página de autenticação

    @login_teste
    Cenário: Validar login do usuário
        Quando realizar login com email e senha válidos
        Então  deverá logar o usuário

    @login_scheme
    Esquema do Cenário: Validar login do usuário
        Quando realizar login com "<email>" e "<password>"
        Então deverá retornar a "<msg>" 
        
        Exemplos:
        |email              |password  |msg                                                                                       |
        |                   |12345678  |An email address required.                                                                |
        |teste              |12345678  |Invalid email address.                                                                    |
        |teste@compass.com  |1234      |Invalid password.                                                                         |
        |teste@compass.com  |12345678  |Welcome to your account. Here you can manage all of your personal information and orders. |