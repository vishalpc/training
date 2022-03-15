=begin 
    Objective:
        Given a hash, modify the hash to contain only those entries whose key is a String.

eg:
    input_hash = {"100" => "gg", 201 => "wq", "str" => 10, "cruise" => 55, 333 => 43, 1 => "rb", "tea" => "1"}

    output:
  	         {"100" => "gg", "str" => 10, "cruise" => 55, "tea" => 1}


The Signature method_name is as given:
	modify_hash(input_hash)

The method should return nil in the following scenarios:
1) if input_hash is Array/string/Fixnum [i.e anything that is not a Hash].
2) if input_hash is nil/empty.!

For case 1 and 2 try to use exception handling where in the rescue block you should return nil.

note:: The return value must be an Hash or nil
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

class HashParse2
		def parse_hash(input_hash)
                  begin
                    if input_hash.class != Hash
                      return nil
                    end
                    output_hash = {}
                    input_hash.each_key { |key|
                      if key.class == String
                        output_hash[key] = input_hash[key]
                      end
                    }
                    if output_hash.length == 0
                      return nil
                    end
                    return output_hash
                  rescue Exception => e
                    puts e.message
                    return nil
                  end
		end
end

if __FILE__ == $0

end
