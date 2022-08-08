module Sections
    class User < SitePrism::Section
        element :link_list, '.myaccount-link-list'
        element :wish_list, '.lnk_wishlist'
    end
end