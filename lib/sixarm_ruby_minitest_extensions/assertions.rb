# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module Minitest::Assertions

  ##
  # Succeeds when +exp+ is true.

  def assert_true exp, msg = nil
    assert_same exp, true, msg
  end

  ##
  # Succeeds when +exp+ is false.

  def assert_false exp, msg = nil
    assert_same exp, false, msg
  end

  ##
  # Succeeds when +obj+ exists, i.e. is not nil.

  def assert_exist obj, msg
    refute_nil obj, msg
  end

  ##
  # Succeeds when +obj+ responds to each method in +meths+.

  def assert_respond_to_all obj, meths, msg = nil
    meths.each{|meth|
      assert_respond_to obj, meth, msg
    }
  end

  ##
  # Succeeds when +items_1+ and +items_2+ have all equal items,
  # regardless of ordering of the items.

  def assert_equal_items items_1, items_2, msg = nil
    assert_equal items_1.sort_by(&:hash), items_2.sort_by(&:hash), msg
  end

end
