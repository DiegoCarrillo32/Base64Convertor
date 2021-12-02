# frozen_string_literal: true

# recibir una letra o letras y convertirlas a su valor ASCII
class AsciiConverter
  def initialize(value)
    @value_to = value
  end

  def toAscii(symbol)
    symbol.ord
  end

  def ChainToAscii
    separated_values = @value_to.chars
    list_of_ascii = []
    separated_values.each do |char|
      list_of_ascii.append(toAscii(char))
    end
    list_of_ascii
  end


end
