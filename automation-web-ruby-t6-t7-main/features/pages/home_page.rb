class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/'
    
    def validate_text_homePage(titleHomePage)
        el_title_HomePage = find('div[class="title"]')
      
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
        end
    end
    
    def validade_text_sobrenos(sobrenos)
        title_sobrenos = find('#sobre-nos > div.MuiBox-root.css-1ln06le > h3')
        if title_sobrenos.text.eql?(sobrenos) != true
            raise "Expect element: #{sobrenos}, but returned: #{title_sobrenos.text}"
        end
    end

    def validade_text_depoimentos(depoimentos)
        texto_depoimentos = find('#depoimentos > div.title.MuiBox-root.css-0 > div > h3')
        if texto_depoimentos.text.eql?(depoimentos) != true
            raise "Expect element: #{depoimentos}, but returned: #{texto_depoimentos.text}"
        end
    end

    def validate_text_parceiros(parceiros)
        title_parceiros = find('#parceiros > h3')
        if title_parceiros.text.eql?(parceiros) != true
            raise "Expect element: #{parceiros}, but returned: #{title_parceiros.text}"
        end
    end

    def validate_text_faleconosco(faleconosco)
        title_faleconosco = find('#faleConosco > div > h3')
        if title_faleconosco.text.eql?(faleconosco) != true
            raise "Expect element: #{faleconosco}, but returned: #{title_faleconosco.text}"
        end
    end
    
end

