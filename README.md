# HackCss::Rails

this is a very simple gem to easily integrate the hack css framework into your
rails application. the styles files have been extracted from the npm package
with the equivalent version of this gem. they have been furthermore prettified
with the help of [Sublime-HTMLPrettify
](https://github.com/victorporof/Sublime-HTMLPrettify) via nodejs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hack_css-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hack_css-rails

## Usage

add this to your `app/assets/stylesheets/application.css.scss`:

```
 *= require hack_css-rails
```

make sure it is included before these two lines and possibly any other local customizations to the hack styles.


```
 *= require_tree .
 *= require_self
```

then add the relevant classes to your application's layout `<body>` tag

```
<!-- markdown theme -->
<body class="hack"></body>

<!-- standard theme -->
<body class="standard"></body>

<!-- dark theme -->
<body class="hack dark"></body>

<!-- dark-grey theme -->
<body class="hack dark-grey"></body>

<!-- solarized-dark theme -->
<body class="hack solarized-dark"></body>
```

the gem loads all styles at once, so the switch between themes works solely by changing class names.

## Development

there is not yet any established routine. the npm package is included, so a possible scenario could follow this:

1. update the npm package inside the `src` folder
2. prettifiy the css files
3. merge the differences
4. extract the version from the npm package and update the gem verion accordingly
5. stage, commit, tag & push everything

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/whysthatso/hack_css-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the HackCss::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/whysthatso/hack_css-rails/blob/master/CODE_OF_CONDUCT.md).
