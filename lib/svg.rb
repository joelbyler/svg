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
  
  #<rect width="300" height="100" style="fill:rgb(0,0,255);stroke-width:1;stroke:rgb(0,0,0)"/>
  #<rect x="50" y="20" width="150" height="150" style="fill:blue; stroke:pink; stroke-width:5; fill-opacity:0.1; stroke-opacity:0.9"/>
  #<rect x="50" y="20" width="150" height="150" style="fill:blue;stroke:pink;stroke-width:5;opacity:0.5"/>
  #<rect x="50" y="20" rx="20" ry="20" width="150" height="150" style="fill:red;stroke:black;stroke-width:5;opacity:0.5"/>  

  #<ellipse cx="300" cy="80" rx="100" ry="50" style="fill:yellow;stroke:purple;stroke-width:2"/>
  #<ellipse cx="240" cy="100" rx="220" ry="30" style="fill:purple"/>
  #<ellipse cx="220" cy="70" rx="190" ry="20" style="fill:lime"/>
  #<ellipse cx="210" cy="45" rx="170" ry="15" style="fill:yellow"/>
  #<ellipse cx="240" cy="50" rx="220" ry="30" style="fill:yellow"/>
  #<ellipse cx="220" cy="50" rx="190" ry="20" style="fill:white"/>
  
  #<line x1="0" y1="0" x2="200" y2="200" style="stroke:rgb(255,0,0);stroke-width:2"/>
end