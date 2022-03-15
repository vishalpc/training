#!/usr/bin/env ruby 
#encoding: UTF-8
#Last modified: 24-Apr-2015 at 17:04

=begin
Write a function to test if a given number is a power of 2 or odd.
The Signature method_name is as given 
	check_power2_or_odd(number)

In place of 'number' if string,set,array,hash or nil is passed, then this method should return nil.

For 'number', the out in the following case should be like:
case 1: if number is 0, return 'zero'
case 2: if number is 1, return 'one'
case 3: if number is odd , return 'Odd'
case 4: if number is power_of_two , return '2Power'
case 5: else  , return 'None'

eg:
					output
				       --------
number = 10			         None
number = 11				 Odd
number = 64				 2Power

--------------------------------------------------------------
NOTE::
use $log.info,$log.error in place of puts, $stderr.puts,etc  

=end

=begin
Uncomment this block in yours code to use log_level 
load_arr = ["../../../../log_utils.rb"]
load_arr.each do |lib|
	require File.expand_path(File.dirname(__FILE__)+ "/" + lib)
end
=end
if ENV['SDF_CI_CHECK'] and __FILE__ == $0
	exit 0
end

class CheckPower2OrOdd
        def check_power2(n)
            if n == 1
                return true
            elsif (n%2 != 0) or (n == 0)
              return false
            end
            return check_power2(n/2)
        end

	def check_power2_or_odd(number=nil)
          begin
            if number.class != Integer
              return nil
            elsif number == 0
              return 'zero'
            elsif number == 1
              return 'one'
            elsif number % 2 != 0
              return 'Odd'
            elsif check_power2(number)
              return '2Power'
            else
              return 'None'
            end
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = CheckPower2OrOdd.new
end
