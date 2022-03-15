=begin 
    Objective:
        Return a string containing the keys of input_hash separated by a " "(space).
For example:
   input = {
             "dude" => [],
             "where's" => "",
             "my" => {},
             "car" => Object.new
	   }

	Use the input hash to construct the OUTPUT STRING "dude where's my car" (notice that the keys of the input hash are the components of the desired string).

The Signature method_name is as given:
	get_string(input_hash)

The method should return nil in the following scenarios:
1) if input_hash is Array/string/Fixnum [i.e anything that is not a Hash]
2) if input_hash is nil/empty 
3) if any key in input_hash is not a string

For case 1,2 try to use exception handling where in the rescue block you should return nil.

note:: The return value must be a String or nil
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

class HashKeys
		def get_string(input_hash)
                
                    if input_hash.class != Hash or input_hash.length == 0
                      return nil
                    end
                    st = []
                    
                    input_hash.each_key {|x|
                      if x.class == String
                        st.append(x)
                      else
                        return nil
                      end}
                    return st.join(" ")

                end                 
end

