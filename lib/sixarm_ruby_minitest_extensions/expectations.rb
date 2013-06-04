# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require 'minitest/autorun'

module Minitest::Expectations
puts "Minitest::Expectations"
  Object.infect_an_assertion :assert_true, :must_be_true, :reverse
  Object.infect_an_assertion :assert_false, :must_be_false, :reverse
  Object.infect_an_assertion :assert_respond_to_all, :must_respond_to_all, :reverse
end

