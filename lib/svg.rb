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

    def point_to_s (x_attr_name, y_attr_name, point)
      return '' if point.nil? 
      return_val = " #{x_attr_name}=\"#{point.x}\"" if not point.x.to_s.empty?
      return_val + " #{y_attr_name}=\"#{point.y}\"" if not point.y.to_s.empty?
    end
  end  

  class Circle<Feature
    attr_accessor :center, :radius
    def to_svg
      string_val = "<circle"

      string_val += point_to_s 'cx', 'cy', center

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
    attr_accessor :top, :radius_x, :radius_y, :width, :height
    def to_svg
      string_val = "<rect"

      string_val += point_to_s 'x', 'y', top

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
    attr_accessor :center, :radius_x, :radius_y
    def to_svg
      string_val = "<ellipse"

      if not center.nil?
        string_val += point_to_s 'cx', 'cy', center
      end
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
    attr_accessor :from, :to
    def to_svg
      string_val = "<line"
      string_val += point_to_s 'x1', 'y1', from
      string_val += point_to_s 'x2', 'y2', to

      if not style.nil?
        string_val += " style=\"#{style.to_s}\""
      end
      string_val += "/>"

      return string_val
    end
  end

  class Point
    def initialize(x=0, y=0)
      @x = x
      @y = y
    end
    def x
      @x
    end
    def y
      @y
    end
  end
end