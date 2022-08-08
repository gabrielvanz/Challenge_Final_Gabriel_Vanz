module Sections
    class Products < SitePrism::Section
        element :name, 'a.product-name'
        element :price, '.right-block > div > span.price.product-price'
        element :image, 'img.replace-2x.img-responsive'

    end
end