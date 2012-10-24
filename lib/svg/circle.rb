require 'svg/feature'
module Svg
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
end