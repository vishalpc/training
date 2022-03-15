=begin
Question: The sentence 'A quick brown fox jumps over the lazy dog' contains every single letter in the alphabet. Such sentences are called pangrams. 

You are to write a program, which takes a sentence, and returns all the letters it is missing (which prevent it from being a pangram). 

You should ignore the case of the letters in sentence, and your return should be all lower case letters, in alphabetical order. You should also ignore 

All non US-ASCII characters.In case the input sentence is already a pangram, print out the string NULL

Your program should accept as its first argument a filename. This file will contain several text strings, one per line. Ignore all empty lines.e. ]

Output should be in the following way. line1: ['a','b'] ; line2 : ['c','b'] etc.class PanagramShort

You should ignore empty lines.

If space and tabs come in between they should be treated as a single line.

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

class PanagramShort
	def short_of_panagram(file_name)
          begin
            op = {}
            f = open(file_name, 'r')
            ls = f.readlines()
            f.close()
            fin = []
            for i in ls
              sub_rs = []
              if i.length != 1
                for j in ('a'..'z')
                  if not(i.include? j)
                    sub_rs.append(j)
                  end
                end
                fin.append(sub_rs)
              end
            end
            fin.each_with_index { |x,y|
              if x.length == 0
                op["line#{y+1}"] = "NULL"
              else
                op["line#{y+1}"] = x
              end
            }
            return op
          rescue Exception => e
            puts e.message
            return e
          end
	end
end

if __FILE__ == $0
	obj = PanagramShort.new
end
