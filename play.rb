#!/usr/bin/env ruby

require 'singleton'
require 'rubygems'
require 'bundler'
Bundler.require




$: << File.join(File.dirname(__FILE__), "/lib")


Dir['lib/*.rb'].each do |file|
  require File.basename(file)
  puts "Loaded #{file}"
end

WindFlow.instance.show

debugger

p 'aaa'

#p YAML::load(CP::Vec2.new(2,1).to_yaml)
#p YAML::load(Track.new([Stick.new(CP::Vec2.new(0,1), CP::Vec2.new(2,1))]).to_yaml )

