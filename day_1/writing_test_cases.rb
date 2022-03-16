#!/usr/bin/env ruby 
### encoding: UTF-8
###Last modified: 02-May-2016
=begin
    This program is to make you familiar with writing test cases for programs.  

    Implement the calculator class and write the test cases for all ::

    Need to write test cases for null check, input_type,didision by zero for do_division etc



    --------------------------------------------------------------
    NOTE::
    use $log.info,$log.error in place of puts, $stderr.puts,etc  

    Please write the text cases as per the Promptcloud directory structure and naming conventions.
=end

=begin
Uncomment this block in your code to use log_level 
load_arr = ["../../../../log_utils.rb"]
load_arr.each do |lib|
	require File.expand_path(File.dirname(__FILE__)+ "/" + lib)
end
=end

if ENV['SDF_CI_CHECK'] and __FILE__ == $0
	exit 0
end

class Calculator 
	def do_sum(num1,num2)
	end
	def do_subtraction(num1,num2)
	end
	def do_multiplication(num1,num2)
	end
	def do_division(num1,num2)
	end
end

if __FILE__ == $0
	obj = Calculator.new
end

