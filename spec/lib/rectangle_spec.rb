require 'spec_helper'

describe Svg::Rectangle do
  
  it "should know how to create a rectangle" do
    rectangle_var = Svg::Rectangle.new
    rectangle_var.width = 300
    rectangle_var.height = 100

    style_var = Svg::Style.new
    style_var.fill = Svg::RGB.new(0, 0, 255)
    style_var.stroke = Svg::RGB.new
    style_var.stroke_width = 1

    rectangle_var.style = style_var

    rectangle_var.to_svg.should eq '<rect width="300" height="100" style="fill:rgb(0,0,255); stroke:rgb(0,0,0); stroke-width:1"/>'
  end
  
  it "should know how to create a square" do
    rectangle_var = Svg::Rectangle.new
    rectangle_var.top_x = 50
    rectangle_var.top_y = 20
    rectangle_var.width = 150
    rectangle_var.height = 150

    style_var = Svg::Style.new
    style_var.fill = 'blue'
    style_var.stroke = 'pink'
    style_var.stroke_width = 5
    style_var.fill_opacity = 0.1
    style_var.stroke_opacity = 0.9  

    rectangle_var.style = style_var

    rectangle_var.to_svg.should eq '<rect x="50" y="20" width="150" height="150" style="fill:blue; stroke:pink; stroke-width:5; fill-opacity:0.1; stroke-opacity:0.9"/>'
  end
  it "should know how to create another square" do
    rectangle_var = Svg::Rectangle.new
    rectangle_var.top_x = 50
    rectangle_var.top_y = 20
    rectangle_var.width = 150
    rectangle_var.height = 150

    style_var = Svg::Style.new
    style_var.fill = 'blue'
    style_var.stroke = 'pink'
    style_var.stroke_width = 5
    style_var.fill_opacity = 0.5

    rectangle_var.style = style_var

    rectangle_var.to_svg.should eq '<rect x="50" y="20" width="150" height="150" style="fill:blue; stroke:pink; stroke-width:5; fill-opacity:0.5"/>'
  end 
  it "should know how to create a square with rounded corners" do
    rectangle_var = Svg::Rectangle.new
    rectangle_var.top_x = 50
    rectangle_var.top_y = 20
    rectangle_var.radius_x = 20
    rectangle_var.radius_y = 20
    rectangle_var.width = 150
    rectangle_var.height = 150

    style_var = Svg::Style.new
    style_var.fill = 'red'
    style_var.stroke = 'black'
    style_var.stroke_width = 5
    style_var.opacity = 0.5

    rectangle_var.style = style_var

    rectangle_var.to_svg.should eq '<rect x="50" y="20" rx="20" ry="20" width="150" height="150" style="fill:red; stroke:black; stroke-width:5; opacity:0.5"/>'
  end
end