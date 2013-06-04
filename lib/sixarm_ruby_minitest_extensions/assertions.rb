# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module Minitest::Assertions

  ##
  # Fails unless +exp+ is true.

  def assert_true exp, msg = nil
    assert_same exp, true, msg
  end

  ##
  # Fails unless +exp+ is false.

  def assert_false exp, msg = nil
    assert_same exp, false, msg
  end

  ##
  # Fails unless +obj+ responds to each method in +meths+.

  def assert_respond_to_all obj, meths, msg = nil
    meths.each{|meth|
      assert_respond_to obj, meth, msg
    }
  end

end
