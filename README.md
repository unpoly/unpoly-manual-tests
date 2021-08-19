Manual tests for Unpoly
=======================

A Rails app to play with Unpoly features that are hard to test well with a unit test. E.g. the visual look of overlays, or edge cases when booting Unpoly.


Setup
-----

Install the `unpoly-manual-tests`, [`unpoly-rails`](https://github.com/unpoly/unpoly-rails) and [`unpoly`](https://github.com/unpoly/unpoly) repositories into the same parent folder:

```
projects/
  unpoly/
  unpoly-rails/
  unpoly-manual-tests/
```

Start a Webpack watcher in the `unpoly` repo:

```
cd ~/projects/unpoly
npm install
npm run watch-dev
```

Start a Rails server in this repo:

```
cd ~/projects/unpoly-manual-tests
bundle install
bundle exec rails server
```

You can now access the manual tests at <http://localhost:3000>.

