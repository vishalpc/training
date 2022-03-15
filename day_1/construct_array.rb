=begin 

    Objective: Given an array of strings, output an array whose each element is an array containing the original element and its index.

For Example:
	input = ['red', 'violet', 'blue']

	Use the input array to construct the following array:

	[['red', 0], ['violet', 1], ['blue', 2]]


The Signature method_name is as given:
	make_array(input_array)

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any element of input_array is not a string [i.e input_array has to be an array of strings]

For case 1,2 and 3, try to use exception handling where in the rescue block you should return nil.

note:: The return value must be an Array of Arrays or nil
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

class ConstructArray
		def make_array(array)
                  begin
                    l = []
                    if array.class != Array or array.length == 0
                      return nil
                    else
                      array.each_with_index{ |x,i|
                        if x.class == String
                          l.append([x,i])
                        else
                          return nil
                        end
                      }
                      return l
                    end
                  rescue
                    return nil
                  end
		end
end

if __FILE__ == $0
	obj = ConstructArray.new
end
