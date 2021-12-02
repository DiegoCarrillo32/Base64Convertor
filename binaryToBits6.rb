class BinaryToBits6
  def initialize(binary)
    @binary = binary
  end

  def ConvertToBits6
    # faltaria revisar bien si sobran numeros de la cadena
    full_string = ConvertToBinaryChain()
    puts full_string + ' String inicial'
    inicio = 0
    final = 5
    contador = 0

    
    # x = 0
    #
    # b = 0
    # e = -full_string.size+5
    # while x < full_string.size
    #
    #   puts full_string[b..e]
    #   b = b + 5
    #   e = e + 5
    #   x+=5
    #
    #
    # end

  end


  def ConvertToBinaryChain
    binary_chain = ''
    @binary.each do |binary|
      binary_chain = binary_chain + binary
    end
    binary_chain
  end

end
