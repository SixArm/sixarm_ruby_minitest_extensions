# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require 'minitest/autorun'

['assertions','expectations'].map{|x|
  require __FILE__.sub(/.rb$/,'/') + "#{x}.rb"
}
