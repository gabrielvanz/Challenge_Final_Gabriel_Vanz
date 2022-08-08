require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        set_url ''

        section :header, Sections::Header, 'header#header'
        # elements :products, 'div .product-container'
        sections :products, Sections::Products, 'div .product-container'

        def access_products_page(index)
            products[index].name.click
        end
    end
end