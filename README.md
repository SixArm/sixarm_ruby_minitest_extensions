# Ruby » <br> Minitest Extensions

* Doc: <http://sixarm.com/sixarm_ruby_minitest_extensions/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_minitest_extensions>
* Repo: <http://github.com/sixarm/sixarm_ruby_minitest_extensions>
* Email: Joel Parker Henderson, <joel@sixarm.com>

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


## Install quickstart

Install:

    gem install sixarm_ruby_minitest_extensions

Bundler:

    gem "sixarm_ruby_minitest_extensions", "~>1.0.3"	

Require:

    require "sixarm_ruby_minitest_extensions"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_minitest_extensions --trust-policy HighSecurity


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


## Changes

* 2013-07-27 1.0.4 Add #assert_exist and #must_exist
* 2013-07-26 1.0.3 Add #assert_equal_items and #must_have_equal_items
* 2013-06-04 1.0.2 Update to enable "Minitest" vs. "MiniTest"
* 2013-06-03 1.0.1 Update for Minitest 5.x
* 2013-06-02 1.0.0 Publish
