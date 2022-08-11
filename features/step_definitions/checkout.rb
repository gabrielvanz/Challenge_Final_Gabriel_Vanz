Dado('que o usuário esteja logado') do
    steps %{
        Dado que esteja na página de autenticação
        Quando realizar login com email e senha válidos
        Então  deverá logar o usuário
    }
end

Dado('que o produto tenha sido adicionado ao carrinho') do
    steps %{
        Dado que esteja na home
        E realizar uma busca por um produto existente
        E adicionar produto da vitrine ao carrinho
    }
end

Quando('fazer checkout do produto pelo carrinho') do
    @cart_page = Pages::Cart.new
    @cart_page.load
    
end
  
Então('senha') do
    
end
