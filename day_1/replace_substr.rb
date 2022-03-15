=begin 
    Objective:
        Given arguments as input_string ,target_string and replace_string, replace all occurrences of 'target_string' in 'input_string' with 'replace_string'.

eg:
    input_string = "home/user/Desktop/misc_dir" , target_string = "/" , replace_string = "--"

    output:
  	          "home--user--Desktop--misc_dir"


The Signature method_name is as given:
	replace_subString(input_string, target_string, replace_string)

The method should return nil in the following scenarios:
1) if any of the input arguments is Array/Hash/Fixnum [i.e anything that is not a String].
2) if any of the input arguments is nil.

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

class ReplaceSubString
		def replace_subString(input_string, target_string, replace_string)
                  begin
                    if (input_string.class != String)
                      return nil
                    end
                    puts input_string
                    a = input_string.gsub(target_string, replace_string)
                    puts a
                    return a
                  rescue Exception => e
                    puts e.message
                    return nil
                  end
		end
end

if __FILE__ == $0

end
