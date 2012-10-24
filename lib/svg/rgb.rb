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
end