module BinaryConvertor
  NO_OF_BITS = 6
  def reverse(chain)
    counter = chain.size-1
    reversed_chain = ''
    while counter >= 0
      reversed_chain += chain[counter]
      counter -= 1
    end

    reversed_chain
  end

    def convert_to_bits6(binaries)
        full_string = convert_to_binary_chain(binaries)
        counter = 0
        bits6 = []
        while counter < full_string.size
          if full_string[counter, NO_OF_BITS].size < 6
            total_zeros = 6 - full_string[counter, NO_OF_BITS].size
            zeros = '0' * total_zeros
            bits6.append(full_string[counter, NO_OF_BITS] + zeros)
          else
            bits6.append(full_string[counter, NO_OF_BITS])
          end
          counter += 6
        end
        bits6
      end

      def convert_to_binary_chain(binaries)
        binary_chain = ''
        binaries.each do |binary|
          binary_chain = binary_chain + binary
        end
        binary_chain
      end

  def convert_to_decimal(binaries)
    list_of_decimals = []
    binaries.each do |binary|
      decimal = 0
      reversed = reverse(binary)

      for i in 0..reversed.length-1
        if reversed[i] == "1"
          decimal = decimal + 2**i
        end

      end

      list_of_decimals.append(decimal.to_s)
    end
    list_of_decimals

  end
end
