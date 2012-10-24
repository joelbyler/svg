module Svg
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
end