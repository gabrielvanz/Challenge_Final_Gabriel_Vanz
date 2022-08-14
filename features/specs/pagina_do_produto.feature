#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do Ecommerce Automation Pratice 
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página de um produto
    Dado que esteja na página de um produto existente

@change_color_pdp
Cenário: Trocar a cor do produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a imagem apresentada na PDP

@product_quantity_pdp
@increase_product_quantity_pdp
Cenário: Aumentar a quantidade do produto na PDP
    Quando aumentar a quantidade do produto
    Então deverá alterar a quantidade exibida na PDP para "2"

@product_quantity_pdp
@decrease_product_quantity_pdp
Cenário: Diminuir a quantidade do produto na PDP
    Quando diminuir a quantidade do produto
    Então deverá alterar a quantidade exibida na PDP para "1"

@change_size_pdp
Cenário: Trocar o tamanho do produto na PDP
    Quando alterar o tamanho do produto
    Então deverá alterar o tamanho exibido na PDP

@add_product_to_cart_pdp
Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com sucesso