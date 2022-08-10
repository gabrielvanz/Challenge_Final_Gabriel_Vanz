require_relative '../sections/register'
require_relative '../sections/login'

module Pages
    class Authentication < SitePrism::Page
        set_url '/index.php?controller=authentication&back=my-account#account-creation'
    
        section :register, Sections::Register, '#authentication'
    
        def set_email_adress(email)
            register.input_email.set email
            register.btn_create_account.click
        end
    
        def set_field_entries(name,lastname,password,address,city,post_code,telephone)
           register.name.set name
           register.lastname.set lastname
           register.password.set password
           register.address.set address
           register.city.set city
           register.state[2].click
           register.postal_code.set post_code
           register.telephone.set telephone
        end
        
    
        section :login, Sections::Login, 'body'
           
        def set_user_configs(email,password)
            login.input_email.set email
            login.input_password.set password
            login.btn_login.click
        end

    end
end