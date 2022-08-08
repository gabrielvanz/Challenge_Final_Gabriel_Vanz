Dado('avance para a página de autenticação') do
    @home_page = Pages::Home.new
    @home_page.signin()
end

Quando('inserir o e-mail válido') do
    user_email = Factory::Static.static_data('user_for_register')['email']
    @authentication_page = Pages::Authentication_register.new
    @authentication_page.set_email_adress(user_email)
end

Então('será redirecionado à página de cadastro') do
    expect(@authentication_page).to have_register
end

Dado('que esteja na página de cadastro') do

end

Quando('for preenchido todos os campos necessários') do
    binding.pry
    user_name      = Factory::Static.static_data('user_for_register')['name']
    user_lastname  = Factory::Static.static_data('user_for_register')['lastname']
    user_pass      = Factory::Static.static_data('user_for_register')['password']
    user_address   = Factory::Static.static_data('user_for_register')['address']
    user_city      = Factory::Static.static_data('user_for_register')['city']
    user_post_code = Factory::Static.static_data('user_for_register')['postal_code']
    user_phone     = Factory::Static.static_data('user_for_register')['telephone']

    @authentication_page.set_field_entries(user_name,user_lastname,user_pass,user_address,user_city,user_post_code,user_phone)
    binding.pry
end

Então('o usuário será cadastrado') do

end