=begin 
    Objective:
        Replace elements of an array with the string "bob" if that element is an integer multiple of 100.
	NOTE: Should modify the original Array.

eg:
    input_array = [100, 201, 300, 400, 333, 1, 12]

    output:
  	          ["bob", 201, "bob", "bob", 333, 1, 12]


The Signature method_name is as given:
	replace_element(input_array)

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any elements of input_array is not an Integer [i.e input_array has to be an array of Integers]

For case 1,2 and 3, try to use exception handling where in the rescue block you should return nil.

note:: The return value must be an Array or nil
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

class ModifyArray
		def replace_element(array)
                
                    if array.class != Array or array.length == 0
                      return nil
                    end
                    for i in array
                      if i.class != Integer
                        return nil
                      end
                      if i%100==0
                        array[array.index(i)] = 'bob'
                      end
                    end
                    return array
                end
end

if __FILE__ == $0
	obj = ModifyArray.new
end

