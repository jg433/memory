source 'http://rubygems.org'

gem 'rails', '3.0.5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2', '~> 0.2.7'
gem 'jquery-rails', '>= 1.0.12'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

group :development do
  gem 'rspec-rails', '>= 2.5.0' # Damit RSpec in Kraft tritt, an der Konsole noch aufrufen: $ rails generate rspec:install
  gem 'annotate-models', '>= 1.0.4' # Dann an der Konsole aufrufen: $ annotate
# Das bewirkt, dass die Model-Klassen die DB-Struktur automatisch vorangestellt bekommen.
  gem 'ruby-debug', '>= 0.10.4'
end

group :test do
  gem 'rspec', '>= 2.5.0'
  gem 'webrat', '>= 0.7.1'
  gem 'factory_girl_rails', '>= 1.0.1' # Ermöglicht gefakte Models für Tests

end

