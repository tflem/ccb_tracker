![CCB Tracker workflow](https://github.com/tflem/ccb_tracker/actions/workflows/ccbtracker.yml/badge.svg)
[![Maintainability](https://qlty.sh/gh/tflem/projects/ccb_tracker/maintainability.svg)](https://qlty.sh/gh/tflem/projects/ccb_tracker)

# The CCB Tracker

> A new and improved credit card balance tracking application, developed with the following:

- CSS Framework: Windi CSS 3.5.6 - Tailwind Alternative
- Ruby on Rails 8.0.4
- Ruby 3.4.7
- HTML5 and Sass 1.97.3
- Hotwired/Turbo-Rails 8.0.23
- PostgreSQL (Tested With Version 18.x)
- Testing Framework: RSpec Rails 8.0.2
- Continuous Integration/Deployment: Github Actions/Digital Ocean
- Code Bundler: Vite ⚡️ Ruby ⚡️ Windi CSS Plugin (7.3.1, 5.1.2, 1.9.4)

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

The application is viewable at https://app.ccbtracker.teeflem.work.
