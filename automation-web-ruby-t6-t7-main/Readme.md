# Automação Ruby + Cucumber+

Projeto de automação web utilizando Ruby + Cucumber.

## Pré-requisitos

* [Ruby](https://rubyinstaller.org/downloads/) - Instalar a versão recomendada marcada por => da sessão <b>WITH DEVKIT</b>

* [Chromedriver] (https://chromedriver.storage.googleapis.com/index.html) - Instalar a versão correspondente à versão do Google Chrome instalada na máquina
 Após baixar o arquivo, salvar o download em C:\Windows\System32
 Adicioná-lo ao path

### Instalar cucumber através do comando:
 gem install cucumber
 cucumber --init

### Instalar as seguintes extensões no VSCode
 - VSCODE-ICONS
 - VSCODE RUBY
 - SNIPPETS AND SYNTAX HIGHLIGHT FOR GHERKIN
 - RUBY LANGUAGE COLORIZATION
 - RUBY
 - GHERKIN INDENT
 - FEATURE SYNTAX HIGHLIGHT AND SNIPPETS
 - CUCUMBER (GHERKIN)

### Criar pasta feature
 * Criar a subpasta "pages"
 * Criar a subpasta "specs"


### Criar arquivo gemfile com as seguintes dependências:
 * source 'https://rubygems.org/'

   gem 'capybara';
   gem 'chromedriver-helper';
   gem 'cucumber';
   gem 'rspec';
   gem 'selenium-webdriver';
   gem 'site_prism';
   gem 'pry';

### Criar pasta env.rb com os requerimentos abaixo:
  require 'capybara/cucumber' 
  require 'capybara/rspec'
  require 'selenium-webdriver'
  require 'site_prism'
  require 'pry'

### Para instalar as dependências utilize o comando
 bundler install

### Ainda na pasta env.rb, incluir o código abaixo:
* Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://www.google.com.br"
    config.default_max_wait_time = 10
end









