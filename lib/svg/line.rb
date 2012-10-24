module Svg
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
end