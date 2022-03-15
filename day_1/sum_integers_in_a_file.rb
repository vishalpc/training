#!/usr/bin/env ruby 
## encoding: UTF-8
#
=begin
#Sum of integers in a file
#Write a function that sums up integers from a text file that looks like the following:
#
#1
#3
#27
#2
#2123

The Signature method_name is as given:
	get_read_file_calculation(file_name)

Constraints
------------
1) skip the empty lines in the file.Consider only the lines that contains the integer.

The method must return nil in the following scenarios:
1) If the file_name does not exist
2) If the file 'file_name' has any line that has anything that is not a Integer (exception: empty lines allowed)
3) If in a line of the file there are two integers separated by whitespace
4) If the file does not have anything

For case 1 through 3, try to use exception handling where in the rescue block you should return nil.
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
class ReadFileCalculation
	def get_read_file_calculation(file_name)
          begin
            f = open(file_name, 'r')
            ls = f.readlines
            f.close()
            result = 0
            if ls.length==0
              return nil
            end
            ls.each { |x|
              if x.strip != "0" and x.to_i == 0 and x.strip != ""
                return nil
              end
              x = x.to_i
              result += x
            }
            if result != 0
              return result
            else 
              return nil
            end
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = ReadFileCalculation.new
end
