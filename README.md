# Kite

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/kite`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## TODO

- [x] Split the root command into separate files

- [ ] Find a way to extend Kite with plugins either by loading custom commands or extending the module

- [ ] Create an example git wrapper(kite-git)

- [ ] Integrate the git wrapper inside the plugin

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kite

## Concepts

Kite ecosystem consists of three main elements: the Kite CLI itself, plugins and Kite.

The **CLI** is responsible for being an entrypoint for loading plugins' functionality and interacting with projects.

The **plugins** are responsible for extending the functionality of a Kite stack, e.g. providing a Terraform wrapper or ways of managing Compose deployments.

 The **projects** are the main interaction points between the Kite CLI, plugins and the operator himself. They contain the plugins and related configurational files, allowing operators to hand-pick any plugins they'd like to use and fine-tune them to the project needs. 

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kite.
