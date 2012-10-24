module Svg
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
end