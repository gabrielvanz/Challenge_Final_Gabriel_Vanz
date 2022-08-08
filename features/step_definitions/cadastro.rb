Dado('que esteja na página de autenticação') do
    @authentication_page = Pages::Authentication_register.new
    @authentication_page.load
end

Dado('insira um e-mail válido e clique em prosseguir com cadastro') do
    user_email = Factory::Static.static_data('user_for_register')['email']
    @authentication_page = Pages::Authentication_register.new
    @authentication_page.set_email_adress(user_email)
end

Quando('for preenchido todos os campos necessários') do
    userName      = Factory::Static.static_data('user_for_register')['name']
    userLastname  = Factory::Static.static_data('user_for_register')['lastname']
    userPass      = Factory::Static.static_data('user_for_register')['password']
    userAddress   = Factory::Static.static_data('user_for_register')['address']
    userCity      = Factory::Static.static_data('user_for_register')['city']
    userPostCode = Factory::Static.static_data('user_for_register')['postal_code']
    userPhone     = Factory::Static.static_data('user_for_register')['telephone']

    @authentication_page.set_field_entries(userName,userLastname,userPass,userAddress,userCity,userPostCode,userPhone)
end

Quando('clicar em register') do                                              
    @authentication_page.register.btn_register.click
    binding.pry
end

Então('o usuário será cadastrado') do
    @my_account = Pages::My_account.new
    binding.pry
    expect(@my_account).to have_myAccount
    binding.pry
end