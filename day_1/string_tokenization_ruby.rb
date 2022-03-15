#!/usr/bin/env ruby 
## encoding: UTF-8
##Last modified: 24-Apr-2015 
=begin
#Write a function, tokenize_string(input_string, delimiter_list) that returns a list of strings that are separated by the delimiters.

The Signature method is as follows:
	tokenize_string(input_string,delimiter_list)

The method should return nil in the following scenariao:
A. Constraints on input_string
------------------------------
	1) if input_string is not string (i.e if it is array/hash/fixnum )
	2) if input_string is nil

B. Constraints on delimiter_list
--------------------------------
	1) if delimiter_list is not an array
	2) if any element in delimiter_list is not a string
	3) if any element in delimiter_list is nil


For case all the above cases, try to use exception handling where in the rescue block you should return nil.

#For example:
1)	
	tokenize_string("How now, Mrs. Brown Cow",[",","."]) 
	returns ['How', 'now', 'Mrs', 'Brown', 'Cow']

2)
	tokenize_string("",["h","d"])
	returns []

3)
	tokenize_string({},234)
	returns nil

4)
	tokenize_string("hello,world",["h","d"])
	returns ["","ello,worl"] 

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

class Tokenization
	def tokenize_string(input_string, delimiter_list)
          begin
            if input_string.class != String or delimiter_list.class != Array
              return nil
            end
            result = input_string.split(Regexp.union(delimiter_list))
            return result
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = Tokenization.new
end
