# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module Minitest::Expectations
  pairs = [
           [:assert_true, :must_be_true],
           [:assert_false, :must_be_false],
           [:assert_exist, :must_exist],
           [:assert_respond_to_all, :must_respond_to_all],
           [:assert_equal_items, :must_have_equal_items],
           [:assert_equal_items_by, :must_have_equal_items_by]
          ]
  pairs.each{|k,v|
    Object.infect_an_assertion k, v, :reverse
  }
end

