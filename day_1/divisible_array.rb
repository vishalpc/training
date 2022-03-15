=begin 
    Objective:
        Given a range (say, 1..100), output an array containing only those numbers that are divisible by 3 or 5.

eg:
    input_range = (1..10)

    output:
  	          [3, 5, 6, 9, 10]


The Signature method_name is as given:
	make_array(range)

The method should return nil in the following scenarios:
1) if input is not of type 'Range'.
2) if input_array is nil. 
3) if input range is not a range of integers.

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

class DivisibleArray
		def make_array(range)
                  begin
                    if range.class != Range
                      return nil
                    end
                    result = []
                    for num in range
                      if num.class != Integer
                        return nil
                      end
                      if (num%3==0) or (num%5==0)
                        result.append(num)
                      end
                    end
                    return result
                  rescue Exception => e
                    puts e.message
                    return nil
                end
                end
end

if __FILE__ == $0
	obj = DivisibleArray.new
end
