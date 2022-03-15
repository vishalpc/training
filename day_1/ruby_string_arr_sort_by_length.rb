#!/usr/bin/env ruby 
# encoding: UTF-8
#Last modified: 28-Jul-2015
=begin
# Sort an array of strings by the length of the string in RubyTry Me!
# # Most languages have a built in sort method that will sort an array of strings 
# # alphabetically. Demonstrate how to sort an array of strings by the length of each 
# #  string, shortest strings first.

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element in input_array is not a string
4) if any element in input_array is nil


For case 1 through 4, try to use exception handling where in the rescue block you should return nil.

e.g:
input ::
["worlds","manga","jin","jinx","a","zs"]

output ::
["a","zs","jin","jinx","manga","worlds"]


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

class StringSortingByLength
	def get_sort_by_length(input_array)
          begin
            a = input_array
            if a.class != Array or a.length == 0
              return nil
            end
            if a.length == 1 and a[0].class == String
              puts a.length
              puts a[0].class
              return a
            end
            for i in a[0, a.length]
              if i.class != String
                return nil
              end
              for j in a[a.index(i)+1, a.length]
                if i.length > j.length
                  a[a.index(i)], a[a.index(j)] = a[a.index(j)], a[a.index(i)]
                end
              end
            end
            return a            
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = StringSortingByLength.new
end
