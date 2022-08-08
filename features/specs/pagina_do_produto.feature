#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do Ecommerce ---
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página de um produto
    Dado que esteja na página de um produto existente

@change_color_pdp
Cenário: Trocar a cor do produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a imagem apresentada na PDP

@increase_product_quantity
@increase_product_quantity_only_pdp
Cenário: Aumentar a quantidade do produto na PDD
    Quando aumentar a quantidade do produto
    Então deverá alterar a quantidade exibida na PDP

@increase_product_quantity
@increase_product_quantity_validade_cart
Cenário: Aumentar a quantidade do produto na PDP no carrinho
    Quando aumentar a quantidade do produto
    E adicionar produto ao carrinho
    Então o produto deverá ser adicionado com a quantidade aumentada

@add_product_to_cart_pdp
Cenário: Adicionar produto ao carrinho pela PDD
    Quando adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com sucesso