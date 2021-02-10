# CasePredicates

Expressive case statements through predicate methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'case_predicates'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install case_predicates

## Usage

Include the module in your classes to give them better case statements.

```ruby

class Example
  include CasePredicates
  
  def initialize(str)
    @str = str
  end
  
  def test
    case @str
    when string?
      puts "success"
    else
      raise "on no"
    end
  end
end

example = Example.new("test")
example.test

# irb> success
# irb> nil

example = Example.new(123)
example.test

# irb> RuntimeError(oh no)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evan-duncan/case_predicates. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/evan-duncan/case_predicates/blob/main/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CasePredicates project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/evan-duncan/case_predicates/blob/main/CODE_OF_CONDUCT.md).
