require 'spec_helper'

describe Svg::Ellipse do
  #<ellipse cx="210" cy="45" rx="170" ry="15" style="fill:yellow"/>
  #<ellipse cx="240" cy="50" rx="220" ry="30" style="fill:yellow"/>
  #<ellipse cx="220" cy="50" rx="190" ry="20" style="fill:white"/>

  it "should be able to create a yello ellipse" do
    ellipse_var = Svg::Ellipse.new
    ellipse_var.center_x = 300
    ellipse_var.center_y = 100
    ellipse_var.radius_x = 100
    ellipse_var.radius_y = 50

    style_var = Svg::Style.new
    style_var.fill = 'yellow'
    style_var.stroke = 'purple'
    style_var.stroke_width = 2

    ellipse_var.style = style_var

    ellipse_var.to_svg.should eq "<ellipse cx=\"300\" cy=\"100\" rx=\"100\" ry=\"50\" style=\"fill:yellow; stroke:purple; stroke-width:2\"/>"
  end
  it "should be able to create a purple ellipse" do
    ellipse_var = Svg::Ellipse.new
    ellipse_var.center_x = 240
    ellipse_var.center_y = 100
    ellipse_var.radius_x = 220
    ellipse_var.radius_y = 30

    style_var = Svg::Style.new
    style_var.fill = 'purple'

    ellipse_var.style = style_var

    ellipse_var.to_svg.should eq "<ellipse cx=\"240\" cy=\"100\" rx=\"220\" ry=\"30\" style=\"fill:purple\"/>"
  end
  it "should be able to create a lime ellipse" do
    ellipse_var = Svg::Ellipse.new
    ellipse_var.center_x = 220
    ellipse_var.center_y = 70
    ellipse_var.radius_x = 190
    ellipse_var.radius_y = 20

    style_var = Svg::Style.new
    style_var.fill = 'lime'

    ellipse_var.style = style_var

    ellipse_var.to_svg.should eq "<ellipse cx=\"220\" cy=\"70\" rx=\"190\" ry=\"20\" style=\"fill:lime\"/>"
  end
end