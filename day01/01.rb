#!/usr/bin/env ruby

def parse_input(input)
  input.chomp.chars.map(&:to_i)
end

def solve1(input)
  captcha = parse_input(input)
  captcha << captcha.first
  captcha.each_cons(2).reduce(0) { |sum, (i, j)| i == j ? sum + i : sum }
end

def solve2(input)
  captcha = parse_input(input)
  a, b = captcha.each_slice(captcha.length / 2).to_a
  a.zip(b).reduce(0) { |sum, (i, j)| i == j ? sum + i : sum  } * 2
end

input = File.read("input.txt")
puts "Part 1: #{solve1(input.clone)}"
puts "Part 2: #{solve2(input.clone)}"
