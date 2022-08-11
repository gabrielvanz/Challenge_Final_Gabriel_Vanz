#require_relative '../sections/header'

module Pages
    class Cart < SitePrism::Page
        set_url '/index.php?controller=order'
        #section :header, Sections::Header, 'header#header'

        element :checkout_by_cart, '.shopping_cart > a'
        elements :increase_product, '.cart_quantity_up'
        element :procced_to_checkout, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'
        
    end
end