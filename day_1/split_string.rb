=begin 
    Objective:
        Given a string as input_string and token(also a string), return an Array of all substrings that are separated by the given token.

eg:
    input_string = "home/user/Desktop/misc_dir" , token = "/"

    output:
  	          ["home", "user", "Desktop", "misc_dir"]


The Signature method_name is as given:
	split_string(input_string, token)

The method should return nil in the following scenarios:
1) if input_string and token is Array/Hash/Fixnum [i.e anything that is not a String].
2) if any of the input arguments is nil/empty .

For case 1,2 try to use exception handling where in the rescue block you should return nil.

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

class SplitString
		def split_string(input_string, token)
                  if input_string.class != String or token == nil
                    return nil
                  end
                  return input_string.split(token)
		end
end

if __FILE__ == $0

end
