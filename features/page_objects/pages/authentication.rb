require_relative '../sections/register'

module Pages
    class Authentication_register < SitePrism::Page
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
    end
end