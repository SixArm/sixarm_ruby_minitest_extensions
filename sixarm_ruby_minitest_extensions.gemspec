# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  SOURCES          = %w'assertions expectations'

  s.name           = "sixarm_ruby_minitest_extensions"
  s.summary        = "SixArm.com » Ruby » Minitest extensions"
  s.description    = "A few simple Minitest assertions and expectations"
  s.version        = "1.0.5"
  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key    = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20145314-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"
  s.has_rdoc       = true

  top_files        = [".gemtest", "CONTRIBUTING.md", "Rakefile", "README.md", "VERSION"]
  lib_files        = ["lib/#{s.name}.rb"] + SOURCES.map{|x| "lib/#{s.name}/#{x}.rb"}
  test_files       = ["test/#{s.name}_test.rb"] + SOURCES.map{|x| "test/#{s.name}_test/#{x}_test.rb"}

  s.files          = top_files + lib_files + test_files
  s.test_files     = test_files

  s.add_dependency('minitest', '>= 4.7')

end
