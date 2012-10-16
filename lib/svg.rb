#require 'svg'
#require 'svg/feature'
#require 'svg/circle'

module Svg

  class RGB
    def initialize(r=0, g=0, b=0)
      @red = r
      @green = g
      @blue = b
    end
    def red
      @red
    end
    def green
      @green
    end
    def blue
      @blue
    end
    def to_s
      return "rgb(#{@red},#{@green},#{@blue})"
    end
  end

  class Style < String
    attr_accessor :fill, :stroke, :stroke_width, :opacity, :fill_opacity, :stroke_opacity
    def to_s
      string_val = attr_to_s 'fill', fill
      string_val += attr_to_s 'stroke', stroke
      string_val += attr_to_s 'stroke-width', stroke_width
      string_val += attr_to_s 'opacity', opacity
      string_val += attr_to_s 'fill-opacity', fill_opacity
      string_val += attr_to_s 'stroke-opacity', stroke_opacity
      if not string_val.empty?
        string_val.strip!
        string_val.chop!
      end
      return string_val
    end
    def attr_to_s (attr_name, attr_val)
      return '' if attr_val.nil?
      " #{attr_name}:#{attr_val};" if not attr_val.to_s.empty?
    end
  end

  class Feature
    attr_accessor :stroke, :stroke_width, :fill, :fill_opacity, :stroke_opacity, :style
    def to_svg
      '<overrideme/>'
    end

    def attr_to_s (attr_name, attr_val)
      return '' if attr_val.nil? 
      " #{attr_name}=\"#{attr_val}\"" if not attr_val.to_s.empty?
    end

  end  

  class Circle<Feature
    attr_accessor :center_x, :center_y, :radius
    def to_svg
      "<circle cx=\"#{center_x}\" cy=\"#{center_y}\" r=\"#{radius}\" stroke=\"#{stroke}\" stroke-width=\"#{stroke_width}\" fill=\"#{fill}\" />"
      string_val = "<circle"
      string_val += attr_to_s 'cx', center_x
      string_val += attr_to_s 'cy', center_y
      string_val += attr_to_s 'r', radius
      string_val += attr_to_s 'stroke', stroke
      string_val += attr_to_s 'stroke-width', stroke_width
      string_val += attr_to_s 'fill', fill
      if not style.nil?
        string_val += " style=\"#{style.to_s}\""
      end
      string_val += "/>"

      return string_val
    end
  end

  class Rectangle<Feature
    attr_accessor :top_x, :top_y, :radius_x, :radius_y, :width, :height
    def to_svg
      string_val = "<rect"
      string_val += attr_to_s 'x', top_x
      string_val += attr_to_s 'y', top_y
      string_val += attr_to_s 'rx', radius_x
      string_val += attr_to_s 'ry', radius_y
      string_val += attr_to_s 'width', width
      string_val += attr_to_s 'height', height
      if not style.nil?
        string_val += " style=\"#{style.to_s}\""
      end
      string_val += "/>"

      return string_val
    end

  end
  
  class Ellipse<Feature
    attr_accessor :center_x, :center_y, :radius_x, :radius_y
    def to_svg
      string_val = "<ellipse"
      string_val += attr_to_s 'cx', center_x
      string_val += attr_to_s 'cy', center_y
      string_val += attr_to_s 'rx', radius_x
      string_val += attr_to_s 'ry', radius_y

      if not style.nil?
        string_val += " style=\"#{style.to_s}\""
      end
      string_val += "/>"

      return string_val
    end
  end

  class Line<Feature
    attr_accessor :from_x, :from_y, :to_x, :to_y
    def to_svg
      string_val = "<line"
      string_val += attr_to_s 'x1', from_x
      string_val += attr_to_s 'y1', from_y
      string_val += attr_to_s 'x2', to_x
      string_val += attr_to_s 'y2', to_y

      if not style.nil?
        string_val += " style=\"#{style.to_s}\""
      end
      string_val += "/>"

      return string_val
    end
  end
end