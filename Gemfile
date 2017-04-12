ruby '2.4.1'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0.rc1'
gem 'pg'
gem 'puma', '~> 3.8'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'
# TODO Consider replacing with active_model_serializers
gem 'jbuilder', '~> 2.6'
gem 'webpacker' #, github: 'rails/webpacker'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # HAML conversion
  # gem 'erb2haml'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Front-end non webpack stuff
gem 'haml', "5.0.0.beta.2"
gem 'simple_form'

# Authentication
gem 'devise'

# Authorization
gem 'pundit'

# Dynamic admin pages
gem "administrate", "~> 0.3.0"
gem 'bourbon'

# Stripe stuff
gem 'stripe'
gem 'stripe_event', '~> 1.5'
gem 'receipts'

# Never actually delete some things
# gem 'paranoia', '~> 2.2'

# Upload to S3 directly
gem 'shrine'
gem 'aws-sdk'
gem 'roda'

# Process images
gem 'image_processing'
gem 'mini_magick', '>= 4.3.5'

gem 'sprockets-rails', '~> 3.2.0'
gem 'bootstrap', '~> 4.0.0.alpha6'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end
