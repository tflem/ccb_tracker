![CCB Tracker workflow](https://github.com/tflem/ccb_tracker/actions/workflows/ccbtracker.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/e4c19498a08452767121/maintainability)](https://codeclimate.com/github/tflem/ccb_tracker/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/e4c19498a08452767121/test_coverage)](https://codeclimate.com/github/tflem/ccb_tracker/test_coverage)

# The CCB Tracker

> A new and improved credit card balance tracking application, developed with the following:

- CSS Framework: Windi CSS 3.5.6 - Tailwind Alternative
- Ruby on Rails 7.1.3.2
- Ruby 3.2.2
- HTML5 and Sass 1.74.1
- Hotwired/Turbo-Rails 8.0.4
- PostgreSQL (Tested With Version 16.x)
- Testing Framework: RSpec Rails 6.1.2
- Continuous Integration/Deployment: Github Actions/Digital Ocean
- Code Bundler: Vite ⚡️ Ruby ⚡️ Windi CSS Plugin (5.2.8, 5.0.0, 1.9.3)

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

The application is viewable at https://app.ccbtracker.teeflem.xyz.
