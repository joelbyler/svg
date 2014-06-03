require 'spec_helper'

describe Svg::Line do

  let(:line) { Line.new }

  it "should be able to draw a line" do
    line.from = Point.new(0, 0)
    line.to = Point.new(200, 200)

    style_var = Style.new
    style_var.stroke = RGB.new(255, 0, 0)
    style_var.stroke_width = 2

    line.style = style_var

    line.to_svg.should eq "<line x1=\"0\" y1=\"0\" x2=\"200\" y2=\"200\" style=\"stroke:rgb(255,0,0); stroke-width:2\"/>"
  end

end
