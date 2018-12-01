#!/usr/bin/env ruby

require 'test/unit'
require 'yaml'
require_relative('02.rb')

class AdventTest < Test::Unit::TestCase
  def setup
    @input = YAML.load(File.read("tests.yml"))
  end

  def test_solve1
    if @input[1]
      @input[1].each { |k, v| assert_equal v, solve1(k) }
    end
  end

  def test_solve2
    if @input[2]
      @input[2].each { |k, v| assert_equal v, solve2(k) }
    end
  end
end
