=begin 
    Objective:
        Given a hash, return an Array of all values whose corresponding keys are integer multiples of 10.

eg:
    input_hash = {100 => "gg", 201 => "wq", 300 => 10, 400 => 55, 333 => 43, 1 => "rb", 12 => "1"]

    output:
  	          ["gg", 10, 55]


The Signature method_name is as given:
	parse_hash(input_hash)

The method should return nil in the following scenarios:
1) if input_hash is Array/string/Fixnum [i.e anything that is not a Hash].
2) if input_hash is nil/empty .
3) if any key of input_hash is not an Integer.

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

class HashParse1
		def parse_hash(input_hash)
                  begin
                    if input_hash.class != Hash or input_hash.length == 0
                      return nil
                    end
                    ls = []
                    k = input_hash.keys
                    for i in k
                      if i.class != Integer
                        return nil
                      end
                      if i.is_a? Integer and i%10==0
                        ls.append(input_hash[i])
                      end
                    end
                    return ls
                  rescue
                    return nil
                  end

		end
end

if __FILE__ == $0

end
