module Svg
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
end