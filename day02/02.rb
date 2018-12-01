#!/usr/bin/env ruby

def parse_input(input)
  input.chomp.split(' ').map(&:to_i)
end

def solve1(input)
  input.each_line.reduce(0) do |acc, line|
    nums = parse_input(line)
    acc += nums.max - nums.min
  end
end

def get_divisor(nums)
  nums.combination(2).to_a.find { |(i, j)| return i / j if i % j == 0 }
end

def solve2(input)
  input.each_line.reduce(0) do |acc, line|
    nums = parse_input(line).sort.reverse
    acc += get_divisor(nums)
  end
end

input = File.read("input.txt")
puts "Part 1: #{solve1(input.clone)}"
puts "Part 2: #{solve2(input.clone)}"
