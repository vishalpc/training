#!/usr/bin/env ruby 
# encoding: UTF-8
#Last modified: 24-Apr-2015
=begin
Question : Write a function that takes a an array of integers, and returns the contiguous subsequence of 3 integers with the largest sum.

The Signature method_name is as given:
	get_subsequence(input_array)

This method should return 3 contiguous integers separated by comma[output.class == string]

note: the elements in input_array can be zero,positive or negative integer

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element in input_array is not a Fixnum/Integer
4) if input_array is of size<3


For case 1 through 4, try to use exception handling where in the rescue block you should return nil.

eg:
                                                 output
						--------
input_array = [1,2,3,4,5,4,6]			 "5,4,6"
input_array = [0,1]				  nil
input_array = [1,"2",3,4,5,nil]			  nil
input_array = []			          nil
input_array = {}			          nil
input_array = 12123			          nil
input_array = "12123"			          nil
input_array = "12123"			          nil
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

class ContiguousSubSequence
	def get_subsequence(input_array)
          begin
            if input_array.class != Array or input_array.length < 3
              return nil
            end
            res = []
            sum = 0
            for i in (0..(input_array.length))
              if input_array[i].class != Integer
                return nil
              end
              if i == input_array.length - 2
                break
              end
              s = input_array[i] + input_array[i+1] + input_array[i+2]
              if s >= sum
                sum = s
                res = [input_array[i], input_array[i+1], input_array[i+2]]
              end
            end
            return res.join(",")
          rescue Exception => e
            puts e.message
            return nil
          end
=begin
          begin
            if input_array.class != Array or input_array.length < 3
              return nil
            end
            for i in (0..input_array.length)
              for j in (i+1..input_array.length-1)
                if input_array[i]>input_array[j]
                  input_array[i], input_array[j] = input_array[j], input_array[i]
                end
              end
            end
            print input_array
            result = "#{input_array[-1]},#{input_array[-2]},#{input_array[-3]}"
            return result
          rescue Exception => e
            puts e.message
            return nil
          end
=end
	end
end

if __FILE__ == $0
	obj = ContiguousSubSequence.new
end
