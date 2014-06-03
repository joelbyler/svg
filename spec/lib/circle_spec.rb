require 'spec_helper'

describe Svg::Circle do
  let(:circle){ Circle.new }
  it "should know how to create a circle" do
    circle.center = Point.new(1, 2)
    circle.radius = 3
    circle.stroke = 'black'
    circle.stroke_width = 2
    circle.fill = 'red'

    circle.to_svg.should eq '<circle cx="1" cy="2" r="3" stroke="black" stroke-width="2" fill="red"/>'
  end
  it "should know how to create aother circle" do
    circle.center = Point.new(4, 8)
    circle.radius = 5
    circle.stroke = 'blue'
    circle.stroke_width = 1
    circle.fill = 'yellow'
	
    circle.to_svg.should eq '<circle cx="4" cy="8" r="5" stroke="blue" stroke-width="1" fill="yellow"/>'
  end
end
