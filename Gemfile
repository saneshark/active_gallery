source 'https://rubygems.org'

gem 'rails', '4.0.1'


gem 'activeadmin', github: 'gregbell/active_admin'	#for admin interface
gem 'carrierwave'			        											#for images
gem 'mini_magick'			        											#for image manipulation
gem 'mysql2'					       		 										#for databse, could also use postgresql

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'rspec-rails'           											#rspec for tests
  gem 'pry'                   											#pry instead of irb for shell 
  gem 'factory_girl_rails'    											#factory girl for sample data, replaces fixtures
  gem 'guard-rspec'           											#for running tests automatically
end