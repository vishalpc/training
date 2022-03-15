#!/usr/bin/env ruby 
# encoding: UTF-8
#Last modified: 28-Jul-2015
=begin
Question: Write a program to reverse the words of an input sentence.
Input: Welcome to PromptCloud
Output: PromptCloud to Welcome

The Signature method is as follows:
	reverse_words_in_line(line)

If the line has multiple whitespace characters, replace it with a single space and then perform the operations

Moreover, the functions should return nil in the following cases :
1) If line in not a string (i.e anything like array/hash/Fixnum)

2) If line is nil 
For case 1 and 2, try to use exception handling where in the rescue block you should return nil.

If line is an empty string, it should return ""

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

class ReverseWords
	def reverse_words_in_line(line)
          begin
            if line.class != String
              return nil
            end
            ls1 = line.split()
            ls2 = ls1.reverse()
            return ls2.join(" ")  
          rescue Exception => e
            puts e.message
            return nil
          end
        end
end

if __FILE__ == $0
	obj = ReverseWords.new
end
