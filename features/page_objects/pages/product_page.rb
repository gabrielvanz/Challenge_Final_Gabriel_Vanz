module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors, 'ul#color_to_pick_list>li'
        element  :main_image, '#bigpic'
    end
end