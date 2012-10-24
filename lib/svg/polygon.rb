module Svg
  class Polygon<Feature
    attr_accessor :points
    def to_svg
      string_val = "<polygon points=\""
      points.each do |point|
        string_val += point.x.to_s + "," + point.y.to_s + " "
      end
      string_val.chop!
      string_val += "\""

      if not style.nil?
        string_val += " style=\"#{style.to_s}\""
      end
      string_val += "/>"

      return string_val
    end
  end
end