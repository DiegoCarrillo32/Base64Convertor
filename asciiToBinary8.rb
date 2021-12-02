class AsciiToBinary8



  def initialize(ascii_list)
    @ascii_list = ascii_list
  end

  def ConvertAsciiToBinary
    binary_list = []
    @ascii_list.each do |ascii|
      result = AsciiToBinary(ascii)
      binary_list.append(result)


    end
    binary_list
  end

  def AsciiToBinary(ascii)
    
    current_ascii = ''
    while ascii > 0
      if ascii % 2 == 0
        current_ascii = '0' + current_ascii

      else
        current_ascii = '1' + current_ascii

      end
      ascii = ascii / 2
    end
    if current_ascii.size == 7
      current_ascii = '0' + current_ascii
    end

    current_ascii
  end

end
