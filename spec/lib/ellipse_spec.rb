require 'spec_helper'
require 'svg/style'

describe Svg::Ellipse do
  let(:ellipse){ Ellipse.new }
  it "should be able to create a yellow ellipse" do
    ellipse.center = Point.new(300, 100)
    ellipse.radius_x = 100
    ellipse.radius_y = 50

    style_var = Style.new
    style_var.fill = 'yellow'
    style_var.stroke = 'purple'
    style_var.stroke_width = 2

    ellipse.style = style_var

    ellipse.to_svg.should eq "<ellipse cx=\"300\" cy=\"100\" rx=\"100\" ry=\"50\" style=\"fill:yellow; stroke:purple; stroke-width:2\"/>"
  end
  it "should be able to create a purple ellipse" do
    ellipse.center = Point.new(240, 100)
    ellipse.radius_x = 220
    ellipse.radius_y = 30

    style_var = Style.new
    style_var.fill = 'purple'

    ellipse.style = style_var

    ellipse.to_svg.should eq "<ellipse cx=\"240\" cy=\"100\" rx=\"220\" ry=\"30\" style=\"fill:purple\"/>"
  end
  it "should be able to create a lime ellipse" do
    ellipse.center = Point.new(220, 70)
    ellipse.radius_x = 190
    ellipse.radius_y = 20

    style_var = Style.new
    style_var.fill = 'lime'

    ellipse.style = style_var

    ellipse.to_svg.should eq "<ellipse cx=\"220\" cy=\"70\" rx=\"190\" ry=\"20\" style=\"fill:lime\"/>"
  end
end
