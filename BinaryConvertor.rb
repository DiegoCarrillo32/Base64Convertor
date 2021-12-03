class BinaryConvertor
    # Merge with old binaryToBits6 methods



    def ConvertToBits6(binaries)
        # faltaria revisar bien si sobran numeros de la cadena
        full_string = ConvertToBinaryChain(binaries)
    
    
        contador = 0
        bits6 = []
        while contador < full_string.size
          if full_string[contador, 6].size < 6
            total_zeros = 6 - full_string[contador, 6].size
            zeros = '0' * total_zeros
            bits6.append(zeros + full_string[contador, 6])
          else
            bits6.append(full_string[contador, 6])
    
          end
    
    
    
          contador += 6
        end
        bits6
    
    
      end
    
    
      def ConvertToBinaryChain(binaries)
        binary_chain = ''
        binaries.each do |binary|
          binary_chain = binary_chain + binary
        end
        binary_chain
      end

      #merge con binary to decimal
  def ConvertToDecimal(binaries)

    binaries.each do |binary|
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