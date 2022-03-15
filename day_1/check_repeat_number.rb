#!/usr/bin/env ruby 
## encoding: UTF-8
##Last modified: 24-Apr-2015

=begin
Question: In an array with integers between 1 and 1,000,000 one value is in the array twice. How do you determine which one?

The Signature method_name is as given:
	check_for_repeating_number(input_array)

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element in input_array is not a Fixnum/Integer
4) if there is no element that is repeated

For case 1,2 and 3, try to use exception handling where in the rescue block you should return nil.
eg:
                                                 output
						--------
input_array = [1,2,3,4,5,4,6]			   4
input_array = [1,2,3,4,5,6]			  nil
input_array = [1,"2",3,4,5,nil]			  nil
input_array = []			          nil
input_array = {}			          nil
input_array = 12123			          nil
input_array = "12123"			          nil
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

class CheckRepeatNumber
	def check_for_repeating_number(input_array)
          begin
            if (input_array.class != Array) or (input_array.length == 0)
              return nil
            end
            return input_array.detect {|e| input_array.rindex(e) != input_array.index(e)}
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = CheckRepeatNumber.new
end
