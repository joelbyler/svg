require 'spec_helper'
require 'svg/style'

describe Svg::Ellipse do

  it "should be able to create a yellow ellipse" do
    ellipse_var = Ellipse.new
    ellipse_var.center = Point.new(300, 100)
    ellipse_var.radius_x = 100
    ellipse_var.radius_y = 50

    style_var = Style.new
    style_var.fill = 'yellow'
    style_var.stroke = 'purple'
    style_var.stroke_width = 2

    ellipse_var.style = style_var

    ellipse_var.to_svg.should eq "<ellipse cx=\"300\" cy=\"100\" rx=\"100\" ry=\"50\" style=\"fill:yellow; stroke:purple; stroke-width:2\"/>"
  end
  it "should be able to create a purple ellipse" do
    ellipse_var = Ellipse.new
    ellipse_var.center = Point.new(240, 100)
    ellipse_var.radius_x = 220
    ellipse_var.radius_y = 30

    style_var = Style.new
    style_var.fill = 'purple'

    ellipse_var.style = style_var

    ellipse_var.to_svg.should eq "<ellipse cx=\"240\" cy=\"100\" rx=\"220\" ry=\"30\" style=\"fill:purple\"/>"
  end
  it "should be able to create a lime ellipse" do
    ellipse_var = Ellipse.new
    ellipse_var.center = Point.new(220, 70)
    ellipse_var.radius_x = 190
    ellipse_var.radius_y = 20

    style_var = Style.new
    style_var.fill = 'lime'

    ellipse_var.style = style_var

    ellipse_var.to_svg.should eq "<ellipse cx=\"220\" cy=\"70\" rx=\"190\" ry=\"20\" style=\"fill:lime\"/>"
  end
end