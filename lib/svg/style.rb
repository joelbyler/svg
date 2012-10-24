module Svg
  class Style < String
    attr_accessor :fill, :stroke, :stroke_width, :opacity, :fill_opacity, :fill_rule, :stroke_opacity
    def to_s
      string_val = attr_to_s 'fill', fill
      string_val += attr_to_s 'stroke', stroke
      string_val += attr_to_s 'stroke-width', stroke_width
      string_val += attr_to_s 'opacity', opacity
      string_val += attr_to_s 'fill-opacity', fill_opacity
      string_val += attr_to_s 'fill-rule', fill_rule
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
end