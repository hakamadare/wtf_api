$:.unshift(File.join(File.expand_path(File.dirname(__FILE__)), 'lib')) unless
  $:.include?(File.join(File.dirname(__FILE__), 'lib')) || $:.include?(File.join(File.expand_path(File.dirname(__FILE__)), 'lib'))

ENV['PATH'] += ':/usr/games'

require 'wtf_api'

run WtfApi::API
