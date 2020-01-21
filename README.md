# Spinup

A gem for setting up playgrounds — small working apps for proof-of-concept stages.

Currently available for
- [Sinatra](http://sinatrarb.com/)
- [Typescript](https://www.typescriptlang.org/)
- [SASS/SCSS](https://sass-lang.com/)
- [Jekyll](https://jekyllrb.com/)
- [Flask](https://flask.palletsprojects.com/en/1.1.x/)

## Why?
Sometimes I want to check real quick if something works with some of the technologies I use.

Setting up a new project isn't a big pain, but it's like ten commands or something, and it's not like you do that every day, so you don't remember those anyway, do you?  I usually go to one of my current projects and add some code somewhere to check if it works, but it's not ideal.

So I went and created a few playgrounds — small working apps which aren't much different from what you get by following 'Getting started' chapter of their documentation. And a gem for setting them up.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spinup'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spinup

## Usage

Spin up a `sinatra` playground in current directory
```bash
$ spinup sinatra .
```

Spin up a `typescript` playground somewhere (*somewhere* is currently under `'~/.spinup-playgrounds'`)
```bash
$ spinup typescript
```

`-h` is for help and it also prints a list of currently available playgrounds
```bash
$ spinup -h
Usage: spinup <playground> [<directory>]
Supported playgrounds: sinatra, jekyll, typescript, flask, sass
    -h, --help                       Prints this help
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/velll/spinup.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
