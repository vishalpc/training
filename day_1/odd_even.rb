=begin
#Question: Write a function to take the following list and return one list of odd numbers and one list of even numbers:

input_arr = [1,21,53,84,50,66,7,38,9]

From this array, make two array as even_number_arr and odd_number_arr

The Signature method_name is as follows:
	odd_and_even()

This method should return two array as 
even_arr and odd_arr

return in the order as even_arr, odd_array

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


class OddEven
	def odd_and_even()
		input_list = [1,21,53,84,50,66,7,38,9]
		even_arr = []
                odd_arr = []
                
                for element in input_list do
                  if element % 2 == 0
                    even_arr.append(element)
                  else
                    odd_arr.append(element)
                  end

                end
                		
		
		return even_arr,odd_arr
	end
end

if __FILE__ == $0
	obj = OddEven.new
end
