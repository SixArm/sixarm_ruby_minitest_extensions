# SixArm.com → Ruby → <br> Minitest Extensions

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_minitest_extensions.svg)](http://badge.fury.io/rb/sixarm_ruby_minitest_extensions)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_minitest_extensions.png)](https://travis-ci.org/SixArm/sixarm_ruby_minitest_extensions)
[![Code Climate Maintainability](https://api.codeclimate.com/v1/badges/$id/maintainability)](https://codeclimate.com/github/SixArm/$dir/maintainability)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_minitest_extensions/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_minitest_extensions?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_minitest_extensions>
* Doc: <http://sixarm.com/sixarm_ruby_minitest_extensions/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_minitest_extensions>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Minitest extensions for our common cases:

Assert:

   * assert_true
   * assert_false
   * assert_respond_to_all
   * assert_equal_items

Spec:

   * must_be_true
   * must_be_false
   * must_respond_to_all
   * must_have_equal_items

Based on Minitest.

For docs go to <http://sixarm.com/sixarm_ruby_minitest_extensions/doc>

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_minitest_extensions

Or add this to your Gemfile:

    gem 'sixarm_ruby_minitest_extensions'

### Require

To require the gem in your code:

    require 'sixarm_ruby_minitest_extensions'

<!--install-shut-->


## Examples

Example Minitest spec:

    describe Foo do
      it "validates" do
        f = Foo.new
        f.valid?.must_be_true
      end
    end

Example Minitest spec:

    describe Foo do
      it "is colorful" do
        f = Foo.new
        f.must_respond_to_all [:red, :green, :blue]
      end
    end
