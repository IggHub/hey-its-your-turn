source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem "simple_calendar", "~> 2.0"

group :development, :test do
  gem 'sqlite3', '1.3.12'
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'faker', '~> 1.7', '>= 1.7.3'
  gem 'capybara', '~> 2.12', '>= 2.12.1'
  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
  gem 'launchy', '~> 2.4', '>= 2.4.3'
  gem 'selenium-webdriver', '~> 2.53', '>= 2.53.4'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rails-controller-testing'
end

group :production do
  gem 'pg', '0.18.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
