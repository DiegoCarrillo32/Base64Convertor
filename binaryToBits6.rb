class BinaryToBits6
  def initialize(binary)
    @binary = binary
  end

  def ConvertToBits6
    # faltaria revisar bien si sobran numeros de la cadena
    full_string = ConvertToBinaryChain()


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


  def ConvertToBinaryChain
    binary_chain = ''
    @binary.each do |binary|
      binary_chain = binary_chain + binary
    end
    binary_chain
  end

end
