##Last modified: 24-Apr-2015
=begin
#Implement simple inheritance program for the following:
  1)  Create three classes : Shapes [Base Class], Cicle,Rectangle[Child Classes]
  2)  Create a function get_sides in the derived classes which takes the radius for circle and length and breadth for rectangle
  3)  Overwrite the class calculate_area in the child classes.

=end

load_arr = ["../../../../log_utils.rb"]
load_arr.each do |lib|
        require File.expand_path(File.dirname(__FILE__)+ "/" + lib)
end

if ENV['SDF_CI_CHECK'] and __FILE__ == $0
        exit 0
end
class Shapes
	def initialize()
		$log.info "This is base Shape class"
	end
	def calculate_area()
		$log.info "This function is used to calculate area of the given shape."		
	end
end

class Circle < Shapes
    def calculate_area(radius)
      return 3.14*3.14*radius
    end
end

class Rectangle < Shapes
  def calculate_area(length, breadth)
    return length*breadth
  end
end
