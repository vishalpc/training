#!/usr/bin/env ruby 
#encoding: UTF-8
=begin
Last modified: 24-Apr-2015 at 17:04
Question: You are given a sorted array of positive integers and a number 'X'. Print out all pairs of numbers whose sum is equal to X in O(n). Print out only unique pairs and the pairs should be in ascending order.

The Signature method_name is as given:
	number_pairs_matching_sums(input_array,sum)

note: the elements in input_array can be zero,positive or negative integer

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element in input_array is not a Fixnum/Integer
4) if sum is not a Fixnum

For case 1 through 4, try to use exception handling where in the rescue block you should return nil.

   Example: Input- 2,4,5,6,9,11,15;X=20
   Output- [[5,15],[9,11]]
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

class MatchingSums
	def number_pairs_matching_sums(input_array,sum)
          begin
            if input_array.class != Array or input_array.length == 0 or sum.class != Integer
              return nil
            end
            result = []
            for i in input_array[0,input_array.length]
              if i.class != Integer
                return nil
              end
              subarr = []
              for j in input_array[input_array.index(i) + 1, input_array.length]
                if j.class != Integer
                  return nil
                end
                if i + j == sum and not(result.include? [i,j])
                  result.append([i,j])
                end
              end
            end
            return result
          rescue Exception => e
            puts e.message
            return e
          end
	end
end

if __FILE__ == $0
	obj = MatchingSums.new
end
