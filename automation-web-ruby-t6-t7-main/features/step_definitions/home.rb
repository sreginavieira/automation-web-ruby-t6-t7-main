Dado('que eu acesse a home page do projeto Qa.Coders') do
    home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
    home.validate_text_homePage(titleHomePage)
    #sleep 3
end

Quando('clico em {string}') do |sobrenos|
    home.click_link(sobrenos)
    #sleep 3
end
  
  Então('visualizo o menu {string}') do |title_sobrenos|
    home.validate_text_sobrenos(title_sobrenos)
    #sleep 3
   end

   Quando('vou ao menu {string}') do |depoimentos|
    home.click_link(depoimentos)
    #sleep 3
  end
  
  Então('vejo o texto {string}') do |texto_depoimentos|
    home. home.validate_text_depoimentos(texto_depoimentos)
    #sleep 3
  end

  Quando('acesso o menu {string}') do |partners|
   home.click_link(partners)
   #sleep 3
  end
  
  Então('consulto o menu {string}') do |partners_title|
    home.validate_text_partners(partners_title)
    #sleep 3
  end

  Quando('carregar o menu {string}') do |faleconosco|
    home.click_link(faleconosco)
    #sleep 3
  end
  
  Então('devo ver o menu {string}') do |faleconosco_title|
    home.validate_text_faleconosco(faleconosco_title)
    #sleep 3
  end
