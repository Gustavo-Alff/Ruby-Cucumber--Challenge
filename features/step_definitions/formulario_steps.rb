Dado("que acessei o sistema") do
    visit 'http://demo.automationtesting.in/Register.html'
  end

Quando("preencho todos os campos do formulário") do
    find('input[placeholder="First Name"]').set('Gustavo')
    find('input[placeholder="Last Name"]').set('Bravi')
    find('textarea[rows="3"]').set('R. Dr. Agostinho Sielski, 67 - Santa Monica, Florianópolis - SC, 88035-320')
    find('input[type="email"]').set('gustavo_na_bravi@bravi.com.br')
    find('input[type="tel"]').set('4896592303')
    find('input[value="Male"]').click
    check('checkbox1')
    check('checkbox2')
    check('checkbox3')
    find("#msdd").set "Portuguese"
    find("li", text: "Portuguese").click
    select('Ruby', from: 'Skills')
    select('Brazil', from: 'countries')
    select('New Zealand', from: 'country')
    select('1986', from: 'yearbox')
    find("select[placeholder=Month]").find("option", text: "October").select_option
    select('15', from: 'daybox')
    find('#firstpassword').set('Bravi67')
    find('#secondpassword').set('Bravi67')
    click_button 'submitbtn'
end
  
Então("meu cadastro é enviado para o sistema") do
    expect(page.title).to eql 'Register'
  end