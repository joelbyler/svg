require 'spec_helper'

describe Svg::Circle do
  it "should know how to create a circle" do
  	circle_var = Svg::Circle.new
  	circle_var.center_x = 1
	  circle_var.center_y = 2
  	circle_var.radius = 3
	  circle_var.stroke = 'black'
  	circle_var.stroke_width = 2
	  circle_var.fill = 'red'
	
  	circle_var.to_svg.should eq '<circle cx="1" cy="2" r="3" stroke="black" stroke-width="2" fill="red" />'
  end
  it "should know how to create aother circle" do
  	circle_var = Svg::Circle.new
  	circle_var.center_x = 4
	  circle_var.center_y = 8
  	circle_var.radius = 5
	  circle_var.stroke = 'blue'
  	circle_var.stroke_width = 1
	  circle_var.fill = 'yellow'
	
  	circle_var.to_svg.should eq '<circle cx="4" cy="8" r="5" stroke="blue" stroke-width="1" fill="yellow" />'
  end
end