require 'spec_helper'

describe Svg::Point do
  it "should be able to pass two dimensions as a point" do
    point = Point.new 12, 14
    point.x.should == 12
    point.y.should == 14
  end
end
