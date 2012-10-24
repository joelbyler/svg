require 'spec_helper'

describe Svg::Polyline do
  it "should know how to draw a polygon" do
  	poly_var = Polyline.new

    poly_var.points = [ Point.new(20, 20), Point.new(40, 25), Point.new(60, 40), Point.new(80, 120), Point.new(120, 140), Point.new(200, 180) ]

    style_var = Style.new
    style_var.fill = 'none'
    style_var.stroke = 'black'
    style_var.stroke_width = 3

    poly_var.style = style_var

  	poly_var.to_svg.should eq '<polyline points="20,20 40,25 60,40 80,120 120,140 200,180" style="fill:none; stroke:black; stroke-width:3"/>'
  end
  it "should know how to draw another polygon" do
    poly_var = Polyline.new

    poly_var.points = [ Point.new(0, 40), Point.new(40, 40), Point.new(40, 80), Point.new(80, 80), Point.new(80, 120), Point.new(120, 120), Point.new(120, 160) ]

    style_var = Style.new
    style_var.fill = 'white'
    style_var.stroke = 'red'
    style_var.stroke_width = 4

    poly_var.style = style_var

    poly_var.to_svg.should eq '<polyline points="0,40 40,40 40,80 80,80 80,120 120,120 120,160" style="fill:white; stroke:red; stroke-width:4"/>'
  end
end
