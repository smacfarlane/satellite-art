source 'https://rubygems.org'


gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'
gem 'haml'
gem 'dotenv-rails'
# TODO: Remove later. Stupid hack to work around version mismatches
gem 'sinatra', github: 'sinatra'
gem 'refile', require: "refile/rails", github: 'pgericson/refile', branch: 'stupid-hack-sinatra-version'
gem 'refile-mini_magick'
gem 'refile-s3'
gem 'simple_form'
gem 'devise', github: 'plataformatec/devise'
gem 'omniauth'
gem 'omniauth-openid'
gem 'cancancan'
gem 'rails_12factor', group: :production
gem 'high_voltage'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
end

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
