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

    def validade_text_partners(partners)
        partners_title = find('#parceiros > h3')
        if partners_title.text.eql?(partners) != true
            raise "Expect element: #{partners}, but returned: #{partners_title.text}"
        end
    end

    def validade_text_partners(faleconosco)
        faleconosco_title = find('#faleConosco > div > h3')
        if faleconosco_title.text.eql?(faleConosco) != true
            raise "Expect element: #{faleConosco}, but returned: #{faleconosco_title.text}"
        end
    end
    
end

