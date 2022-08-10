# Automação Ruby + Cucumber+

Projeto de automação web utilizando Ruby + Cucumber.

### Pré-requisitos

* [Ruby](https://rubyinstaller.org/downloads/) - Instalar a versão recomendada marcada por => da sessão <b>WITH DEVKIT</b>

* [Chromedriver] (https://chromedriver.storage.googleapis.com/index.html) - Instalar a versão correspondente à versão do Google Chrome instalada na máquina <br/>
> Após baixar o arquivo, salvar o download em C:\Windows\System32<br/>
> Adicioná-lo ao path <p>

* Instalar cucumber através do comando:
 gem install cucumber<br/>
 cucumber --init<p>

* Instalar as seguintes extensões no VSCode<br/> 
 - VSCODE-ICONS
 - VSCODE RUBY
 - SNIPPETS AND SYNTAX HIGHLIGHT FOR GHERKIN
 - RUBY LANGUAGE COLORIZATION
 - RUBY
 - GHERKIN INDENT
 - FEATURE SYNTAX HIGHLIGHT AND SNIPPETS
 - CUCUMBER (GHERKIN)

* Criar pasta feature<br/>

 Criar a subpasta "pages"<br/>
 Criar a subpasta "specs"<p>


* Criar arquivo gemfile com as seguintes dependências:

source 'https://rubygems.org/'<br/>

gem 'capybara'<br/>
gem 'chromedriver-helper'<br/> 
gem 'cucumber'<br/> 
gem 'rspec'<br/>
gem 'selenium-webdriver'<br/>
gem 'site_prism'<br/>
gem 'pry'<br/>


* Criar pasta env.rb com os requerimentos abaixo:

require 'capybara/cucumber'<br/>
require 'capybara/rspec'<br/>
require 'selenium-webdriver'<br/>
require 'site_prism'<br/>
require 'pry'<br/>


- Para instalar as dependências utilize o comando

```
bundler install

```

* Ainda na pasta env.rb, incluir o código abaixo:

```
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://www.google.com.br"
    config.default_max_wait_time = 10
end
```







