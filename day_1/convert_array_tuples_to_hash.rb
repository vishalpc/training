=begin 
	 [ ['a',1], ['b',2], ['c','3' ] ]
	 How can I convert this to a Hash?

	 { 'a' => 1, 'b' => 2, 'c' => 3}

The Signature method_name is as given:
	convert(input_array)

The method should return nil in the following scenarios:
1) if input_array is Hash/string/Fixnum [i.e anything that is not an array]
2) if input_array is nil/empty 
3) if any elements of input_array is not an array [i.e input_array has to be an array of array]

For case 1,2 and 3, try to use exception handling where in the rescue block you should return nil.

eg:
input_array = [['single',[:jack,1]],['jumbo',['bull','3484']]]
output
{'single' => [:jack,1], 'jumbo' => ['bull','3484']}
	
note:: The return value must be a hash or nil
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

class ConvertTuplesHash
		def convert(array)
                  begin
                    output_hash = {}
                    if array.length == 0
                      return nil
                    else
                      for i in array
                        if i.length == 2
                          output_hash[i[0]] = i[1]
                        else
                          return nil
                        end
                      end
                      return output_hash 
                    end
                  rescue
                    return nil
                  end
                  
		end
end

if __FILE__ == $0
	obj = ConvertTuplesHash.new
end
