#!/usr/bin/env ruby 
# encoding: UTF-8
#Last modified: 24-Apr-2015

=begin
Write a function that takes an array of integers and efficiently calculates and returns the LCM.

The elements in the input_array can be any integer[+ve,-ve,zero]
The function should be public and return an Fixnum/Bignum.

The Signature method_name is as given:
	get_lcm(input_array)

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element in input_array is not a Fixnum/Integer

For case 1 through 3, try to use exception handling where in the rescue block you should return nil.

Consider the following scenarios:
1) if any element is 0, lcm = 0
2) if any element is -ve , lcm naturally will be +ve
3) if all element is -ve , lcm will naturally be -ve
4) if only one element is present, lcm = that element itself

eg:
						output
					       --------
input_array = [100,123,50] 			 1230
input_array = [100,123,0] 			  0
input_array = 0					 nil
input_array = {}				 nil
input_array = []				 nil
input_array = ""				 nil
input_array = "hello world"			 nil
input_array = [100,123,"50"] 			 nil
input_array = [-1,1]				  1
input_array = [-41,-82]				 -82
input_array = [10]				  10

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

class Lcm
        def get_div(num)
          if num%2 == 0
            return 2
          elsif num%3 == 0
            return 3
          end
          return num
        end

	def get_lcm(input_array)
          begin
            if input_array.class != Array or input_array.length == 0
              return nil
            elsif input_array.length == 1
              return input_array[0]
            end

            for i in input_array
              if i == 0
                return 0
              elsif i.class != Integer
                return nil
              end
            end
            
            lcm = 1
            while input_array.length > 0 
              min = input_array.min
              divisor = get_div(min)
              
              for x in (0..input_array.length-1)
                quot = input_array[x]/divisor
                reminder = input_array[x]%divisor
                if reminder == 0
                  input_array[x] = quot
                end
              end

              lcm*=divisor
              min = input_array.min
              if min==1
                input_array.delete(min)
              end
            end
            return lcm


          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = Lcm.new
end
