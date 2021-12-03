class BinaryToDecimal

  def initialize(binary)
    @binary = binary
  end

  def ConvertToDecimal

    @binary.each do |binary|
      decimal = 0
      reversed = binary.reverse

      for i in 0..reversed.length-1
        if reversed[i] == "1"
          decimal = decimal + 2**i

        end
      end
      puts decimal

    end


  end


end
