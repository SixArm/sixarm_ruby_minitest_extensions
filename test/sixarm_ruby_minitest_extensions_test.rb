# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "sixarm_ruby_minitest_extensions"

['assertions','expectations'].map{|x|
  require "sixarm_ruby_minitest_extensions_test/#{x}_test"
}

