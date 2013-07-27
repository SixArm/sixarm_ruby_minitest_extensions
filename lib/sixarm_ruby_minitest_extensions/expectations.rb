# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module Minitest::Expectations
  Object.infect_an_assertion :assert_true, :must_be_true, :reverse
  Object.infect_an_assertion :assert_false, :must_be_false, :reverse
  Object.infect_an_assertion :assert_respond_to_all, :must_respond_to_all, :reverse
  Object.infect_an_assertion :assert_equal_items, :must_have_equal_items, :reverse
end

