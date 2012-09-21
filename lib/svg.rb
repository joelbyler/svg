#require 'svg'
#require 'svg/feature'
#require 'svg/circle'

module Svg

  class Feature
    attr_accessor :stroke, :stroke_width, :fill
    def to_svg
      '<circle cx="1" cy="2" r="3" stroke="black" stroke-width="2" fill="red" />'
    end
  end  

  class Circle<Feature
    attr_accessor :center_x, :center_y, :radius
    def to_svg
      "<circle cx=\"#{center_x}\" cy=\"#{center_y}\" r=\"#{radius}\" stroke=\"#{stroke}\" stroke-width=\"#{stroke_width}\" fill=\"#{fill}\" />"
    end
  end
  
end