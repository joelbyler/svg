require 'spec_helper'

describe Svg::Rectangle do
  
  let(:rectangle){ Rectangle.new }
  it "should know how to create a rectangle" do
    rectangle.width = 300
    rectangle.height = 100

    style_var = Style.new
    style_var.fill = RGB.new(0, 0, 255)
    style_var.stroke = RGB.new
    style_var.stroke_width = 1

    rectangle.style = style_var

    rectangle.to_svg.should eq '<rect width="300" height="100" style="fill:rgb(0,0,255); stroke:rgb(0,0,0); stroke-width:1"/>'
  end
  
  it "should know how to create a square" do

    rectangle.top = Point.new(50, 20)

    rectangle.width = 150
    rectangle.height = 150

    style_var = Style.new
    style_var.fill = 'blue'
    style_var.stroke = 'pink'
    style_var.stroke_width = 5
    style_var.fill_opacity = 0.1
    style_var.stroke_opacity = 0.9  

    rectangle.style = style_var

    rectangle.to_svg.should eq '<rect x="50" y="20" width="150" height="150" style="fill:blue; stroke:pink; stroke-width:5; fill-opacity:0.1; stroke-opacity:0.9"/>'
  end
  it "should know how to create another square" do

    rectangle.top = Point.new(50, 20)

    rectangle.width = 150
    rectangle.height = 150

    style_var = Style.new
    style_var.fill = 'blue'
    style_var.stroke = 'pink'
    style_var.stroke_width = 5
    style_var.fill_opacity = 0.5

    rectangle.style = style_var

    rectangle.to_svg.should eq '<rect x="50" y="20" width="150" height="150" style="fill:blue; stroke:pink; stroke-width:5; fill-opacity:0.5"/>'
  end 
  it "should know how to create a square with rounded corners" do
    rectangle = Rectangle.new

    rectangle.top = Point.new(50, 20)

    rectangle.radius_x = 20
    rectangle.radius_y = 20
    rectangle.width = 150
    rectangle.height = 150

    style_var = Style.new
    style_var.fill = 'red'
    style_var.stroke = 'black'
    style_var.stroke_width = 5
    style_var.opacity = 0.5

    rectangle.style = style_var

    rectangle.to_svg.should eq '<rect x="50" y="20" rx="20" ry="20" width="150" height="150" style="fill:red; stroke:black; stroke-width:5; opacity:0.5"/>'
  end
end
