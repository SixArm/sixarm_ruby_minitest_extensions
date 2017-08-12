# SixArm.com → Ruby → <br> Minitest Extensions

* Doc: <http://sixarm.com/sixarm_ruby_minitest_extensions/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_minitest_extensions>
* Repo: <http://github.com/sixarm/sixarm_ruby_minitest_extensions>
<!--HEADER-SHUT-->

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


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_minitest_extensions", ">= 1.0.6", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_minitest_extensions -v ">= 1.0.6, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_minitest_extensions -v ">= 1.0.6, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_minitest_extensions"

<!--INSTALL-SHUT-->


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
