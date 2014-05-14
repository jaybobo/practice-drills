class RomanNumeralConverter

  DIGITS = [
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"]
  ]


  def convert(n)
    result = ""

    DIGITS.each do |limit, glyph|
      while n >= limit
        result << glyph
        n -= limit
      end
    end

   result
  end

end