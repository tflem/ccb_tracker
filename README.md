![CCB Tracker workflow](https://github.com/tflem/ccb_tracker/actions/workflows/ccbtracker.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/e4c19498a08452767121/maintainability)](https://codeclimate.com/github/tflem/ccb_tracker/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/e4c19498a08452767121/test_coverage)](https://codeclimate.com/github/tflem/ccb_tracker/test_coverage)

# The CCB Tracker

> A new and improved credit card balance tracking application, developed with the following tools:

* Ruby 3.0.2
* Continuous Integration/Deployment: Github Actions/Heroku
* Ruby on Rails 6.1.4
* HTML5 and Sass
* PostgreSQL
* Testing Framework: RSpec
* CSS Framework: Windi CSS

## Setup

How to run tests:

```
% rspec spec
```

How to run the development console:

```
% rails console
```

How to run the development server:

```
% rails server
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% rails db:create

% rails db:migrate
```

You can view a staged demo at http://ccbtracker.herokuapp.com.