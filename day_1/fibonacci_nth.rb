=begin
Question: Write a function to return the Nth number of Fibonacci sequence.

Try to implement it using dynamic programming approach 

Consider the following cases:
1) If n=0 , fib = 0
2) If n=1 , fib = 1

The Signature method_name is as given:
	get_fibonacci(n)

The method should return nil in the following scenarios:
1) if n is negative
2) if n is not integer

For case 1 and 2, try to use exception handling where in the rescue block you should return nil.

eg:
    n						output
  -----  			      	       ---------
    0						  0
    1						  1
    8						 21
    []						 nil
    {}						 nil
   "7"						 nil
   -232						 nil

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

class Fibonacci
	def get_fibonacci(n)
          begin
            if n.class != Integer 
              return nil
            elsif n < 0
              return nil
            elsif n==0
              return 0
            elsif n==1 or n==2
              return 1
            else
              return get_fibonacci(n-1) + get_fibonacci(n-2)
            end
          rescue Exception => e
            puts e.message
            return nil
          end
	end
end

if __FILE__ == $0
	obj = Fibonacci.new
end
