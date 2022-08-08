class FooterExemploMapeamentos < SitePrism::Section
    element :img_facebook, '#social_block > ul > li.facebook'
    element :twitter, '#social_block > ul > li.twitter'
end

class ProductsExemploMapeamentos < SitePrism::Section
    element :name, '.product_list.grid.row > li a.product-name'
    element :price, '.right-block > div > span.price.product-price'
end

class HomeExemploMapeamentos < SitePrism::Page
    set_url '/'
    
    element :logo_img, '.logo.img-responsive'

    elements :menu_items, '#block_top_menu > ul > li'
    #menu_items.first.click
    #menu_items[2].click

    section :footer, FooterExemploMapeamentos, 'footer#footer.container.accordion'
    # footer.img_facebook.click
    # footer.img_twitter.click

    sections :products, ProductsExemploMapeamentos, '.product_list.grid.row > li'
    # product[2].price.click
    # product.last.click
end