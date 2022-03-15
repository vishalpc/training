#!/usr/bin/env ruby 
# encoding: UTF-8
#Last modified: 28-Jul-2015

=begin
Write a function that takes an integer and returns the smallest number that is greater than the given number which is a palendrome.

The Signature method is as follows:
	get_next_palindrom(input_number)

The method should return nil in the following scenarios:
1) if input_number is nil
2) if input_number is not a Fixnum

For case 1 and 2, try to use exception handling where in the rescue block you should return nil.

eg:

if the input was 111 the next palindromic number would be 121.

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

class NextPalindrom
        def ispalindrom(num)
            n = num
            rev = 0
            while num>0 do
              k=num%10
              rev = (rev*10)+k
              num = num/10
            end

            if n==rev
              return true
            else
              return false
            end
        end

	def get_next_palindrom(input_number)
          if input_number.class != Integer
            return nil
          end
          input_number = input_number+1
          while true do
            if ispalindrom(input_number)
              break
            end
            input_number = input_number+1
          end
          return input_number
	end
end

if __FILE__ == $0
	obj = NextPalindrom.new
end
