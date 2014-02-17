captr.io
--------

1. Make sure you have `node`, `ruby` and `bundler` installed (Mac OSX users: `brew install node ruby && gem install bundler`)
2. Run `scripts/bootstrap` to setup the environment
3. Use grunt to run the application:
  - `grunt serve`: starts (and live-reload) captr-web
  - `grunt test`: runs unit tests
  - `grunt build`: creates a production–ready package

## Feature Tests
We use Cucumber + Capybara/Poltergeist for our feature tests. In order to run them you should follow these steps:

1. Make sure you have `phantomjs` installed (Mac OSX users: `brew install phantomjs`)
2. Run `grunt serve` to start an instance of your application (we should automate this, though)
3. Run `bundle exec cucumber`
4. Hope your tests succeed!
