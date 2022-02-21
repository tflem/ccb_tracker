source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 6.1.4", ">= 6.1.4.6"
gem "pg", "~> 1.2", ">= 1.2.3"
gem "puma", "~> 5.6", ">= 5.6.2"
gem "sass-rails", ">= 6"
gem "vite_rails"
gem "rexml", "~> 3.2", ">= 3.2.5"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 5.0", ">= 5.0.2"
end

group :development do
  gem "listen", "~> 3.3"
  gem "better_errors", "~> 2.9", ">= 2.9.1"
  gem "binding_of_caller", "~> 1.0"
end

group :test do
  gem "capybara", "~> 3.35", ">= 3.35.3"
  gem "selenium-webdriver"
  gem "webdrivers", "~> 5.0"
  gem "simplecov", "~> 0.21.2"
  gem "simplecov_json_formatter", "~> 0.1.3"
  gem "factory_bot_rails", "~> 6.2"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
