Quando('realizar login com email e senha válidos') do                               
    @authentication_page = Pages::Authentication.new

    userEmail       = Factory::Static.static_data('user_for_login')['email']
    userPassword    = Factory::Static.static_data('user_for_login')['password']
    @authentication_page.set_user_configs(userEmail,userPassword)
end                                                                            
                                                                                
Então('deverá logar o usuário') do      
    @my_account = Pages::My_account.new                                                       
    expect(@my_account).to have_myAccount
end

Quando('realizar login com {string} e {string}') do |email, password|                              
    @authentication_page = Pages::Authentication.new
    @authentication_page.set_user_configs(email,password)
end                                                                            
                                                                                
# Então('deverá logar o usuário') do      
#     @my_account = Pages::My_account.new                                                       
#     expect(@my_account).to have_myAccount
# end          

Então('deverá retornar a {string}') do |msg|
    @msg_allert = @authentication_page.login
    expect(@msg_allert).to have_content msg
end