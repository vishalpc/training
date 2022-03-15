#!/usr/bin/env ruby 
## encoding: UTF-8
##Last modified: 24-Apr-2015
=begin
#Implement two functions with signature as follows:

  1)  find_chars_order_n(string1, string2)[for an algorithm of order O(n)]
  2) find_chars_ordern_square(string1,string2)[for an algorithm of order O(n^2)] 

that take two strings (as say string1 and string2) and returns a string (say string_3) that contains only the characters found common in string1 and string2. The order of the characters in string3 must be same as that they are found in string1. 
Implement a version of order O(n) and one of order O(n^2) simultaneously.

note: The position of the characters in common to both string1 and string2 need not be same.

eg: 
For Input
string1 = "hello manzer"
string2 = "helzo killmse"

output
helo mz

Similary for the following cases, these functions must return nil:
1) For two string, if there is no match
2) any of string1 or string2 is nil/empty
3) any of string1 or string2 is hash/array/set/Fixnum [i.e anything other than string]
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
class CharactersInString

	def find_chars_order_n(value1,value2)
          begin
            if (value1.class != String) or (value2.class != String) or (value1 == "") or (value2 == "")
              return nil
            end
            string3 = ""
            value1.each_char {|i|
              if (value2.include? i) and not(string3.include? i)
                string3 += i
              end}
            return string3
          rescue Exception => e
            puts e.message
            return nil
          end
	end

	def find_chars_ordern_square(value1,value2)
          begin
            if (value1.class != String) or (value2.class != String) or (value1 == "") or (value2 == "")
              return nil
            end
            string3 = ""
            value1.each_char {|i|
              value2.each_char {|j|
                if (i == j) and not(string3.include? i) 
                  string3 += j
                  break
                end}
            }
            return string3
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = CharactersInString.new
end
