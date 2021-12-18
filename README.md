![CCB Tracker workflow](https://github.com/tflem/ccb_tracker/actions/workflows/ccbtracker.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/e4c19498a08452767121/maintainability)](https://codeclimate.com/github/tflem/ccb_tracker/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/e4c19498a08452767121/test_coverage)](https://codeclimate.com/github/tflem/ccb_tracker/test_coverage)

# The CCB Tracker

> A new and improved credit card balance tracking application, developed with the following tools:

- CSS Framework: Windi CSS (Tailwind Alternative) 3.3.0
- Ruby on Rails 6.1.4.1
- Ruby 3.0.2
- HTML5 and Sass 1.45.0
- PostgreSQL (Tested With Version 13.x)
- Testing Framework: RSpec Rails 5.0
- Code Bundler: Vite ⚡️ Ruby (2.7.3, 3.0.4)
- Continuous Integration/Deployment: Github Actions/Heroku

## Setup

How to run tests:

```
% bundle exec rspec
```

How to run the development console:

```
% rails console or rails c for short
```

How to run the development server:

```
% rails server or rails s for short
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% rails db:create

% rails db:migrate
```

The application is viewable at http://ccb-tracker.herokuapp.com.
