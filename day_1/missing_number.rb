#!/usr/bin/env ruby 
# encoding: UTF-8
#Last modified: 24-Apr-2015 
=begin
Find the missing number in RubyTry Me!

Suppose you have an array of 99 numbers. The array contains the digits 1 to 100 with one digit missing. Describe four different algorithms to compute the missing number. Two of these should optimize for low storage and two of these should optimize for fast processing.

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element in input_array is not a Fixnum/Integer
4) if more than one element is missing in the given range
5) if no element is missing in the given range

For case 1 through 4, try to use exception handling where in the rescue block you should return nil.


--------------------------------------------------------------
NOTE::
use $log.info,$log.error in place of puts, $stderr.puts,etc  

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

class MissingNumber
	def missing_number_ver1(input_array)
          begin
            if input_array.class != Array or input_array.length == 0 or input_array.length==100  or input_array.length+1 != 100
              return nil
            end

            xor = 0
            for i in input_array
              xor = xor ^ i
            end
            for i in (1..input_array.length+1)
              xor = xor^i
            end
            return xor
          rescue Exception => e
            puts e.message
            return nil
          end
	end
	def missing_number_ver2(input_array)
          begin 
            if input_array.class != Array or input_array.length ==0 or input_array.length==100 or input_array.length+1 != 100
              return nil
            end
            n = input_array.length
            m=n+1
            total = m*(m+1)/2
            return total - input_array.sum
          rescue Exception => e
            puts e.message
            return nil
          end
	end
	def missing_number_ver3(input_array)
          begin
            if input_array.class != Array or input_array.length == 0 or input_array.length==100 or input_array.length+1 != 100
              return nil
            end
          total = 1
          for i in (2..input_array.length+1)
            total += i
            total -= input_array[i - 2]
          end
          return total
          rescue Exception => e
            puts e.message
            return nil
          end
	end
	def missing_number_ver4(input_array)
          begin
            if input_array.class != Array or input_array.length == 0 or input_array.length == 100  or input_array.length+1 != 100
              return nil
            end
            n = input_array.length
            total = (n+1)*(n+2)/2
            sum_array = input_array.sum
            return total - sum_array

          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = MissingNumber.new
end
