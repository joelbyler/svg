require 'spec_helper'

describe Svg::Polygon do
  it "should know how to draw a polygon" do
  	poly_var = Polygon.new

    poly_var.points = [ Point.new(200, 10), Point.new(250, 190), Point.new(160, 210) ]

    style_var = Style.new
    style_var.fill = 'lime'
    style_var.stroke = 'purple'
    style_var.stroke_width = 1

    poly_var.style = style_var

  	poly_var.to_svg.should eq '<polygon points="200,10 250,190 160,210" style="fill:lime; stroke:purple; stroke-width:1"/>'
  end
  it "should know how to draw another polygon" do
    poly_var = Polygon.new

    poly_var.points = [ Point.new(220, 10), Point.new(300, 210), Point.new(170, 250), Point.new(123, 234) ]

    style_var = Style.new
    style_var.fill = 'lime'
    style_var.stroke = 'purple'
    style_var.stroke_width = 1

    poly_var.style = style_var

    poly_var.to_svg.should eq '<polygon points="220,10 300,210 170,250 123,234" style="fill:lime; stroke:purple; stroke-width:1"/>'
  end

  it "should know how to draw a polygon with a fill" do
    poly_var = Polygon.new

    poly_var.points = [ Point.new(100, 10), Point.new(40, 180), Point.new(190, 60), Point.new(10, 60), Point.new(160, 180) ]

    style_var = Style.new
    style_var.fill = 'lime'
    style_var.stroke = 'purple'
    style_var.stroke_width = 5
    style_var.fill_rule = 'nonzero'

    poly_var.style = style_var

    poly_var.to_svg.should eq '<polygon points="100,10 40,180 190,60 10,60 160,180" style="fill:lime; stroke:purple; stroke-width:5; fill-rule:nonzero"/>'
  end

  it "should know how to draw a polygon with an alternating fill" do
    poly_var = Polygon.new

    poly_var.points = [ Point.new(100, 10), Point.new(40, 180), Point.new(190, 60), Point.new(10, 60), Point.new(160, 180) ]

    style_var = Style.new
    style_var.fill = 'lime'
    style_var.stroke = 'purple'
    style_var.stroke_width = 5
    style_var.fill_rule = 'evenodd'

    poly_var.style = style_var

    poly_var.to_svg.should eq '<polygon points="100,10 40,180 190,60 10,60 160,180" style="fill:lime; stroke:purple; stroke-width:5; fill-rule:evenodd"/>'
  end
end
