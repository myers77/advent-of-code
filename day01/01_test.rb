#!/usr/bin/env ruby

require 'test/unit'
require 'yaml'
require_relative('01.rb')

class AdventTest < Test::Unit::TestCase
  def setup
    @input = YAML.load(File.read("01_input.yml"))
  end

  def test_solve1
    if @input[1]
      @input[1].each { |k, v| assert_equal v, Advent01.solve1(k) }
    end
  end

  def test_solve2
    if @input[2]
      @input[2].each { |k, v| assert_equal v, Advent01.solve2(k) }
    end
  end
end
