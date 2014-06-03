module Svg
  class Polyline<Feature
    attr_accessor :points

    def from(x, y)
      @points = [Point.new(x, y)]
      self
    end

    def to(x, y)
      @points << Point.new(x, y)
      self
    end

    def to_svg
      string_val = "<polyline points=\""
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
