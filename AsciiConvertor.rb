class AsciiConvertor

  #devuelve el valor de un simbolo en ascii
    def toAscii(symbol)
      symbol.ord
    end

  #separa un string en un arreglo de sus caracteres
  # y busca el valor ascii de cada uno de ellos
    def ChainToAscii(value_to)
      separated_values = value_to.chars
      list_of_ascii = []
      separated_values.each do |char|
        list_of_ascii.append(toAscii(char))
      end
      list_of_ascii
    end


  #convierte los valores ascii a un arreglo de binarios

    def ConvertAsciiToBinary(ascii_list)
        binary_list = []
        ascii_list.each do |ascii|
          result = AsciiToBinary(ascii)
          binary_list.append(result)
    
    
        end
        binary_list
      end

    #toma un valor ascii y saca su numero binario
  # dividiebndo modularmente por 2 y agregando 0 o 1 en base al resultado
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
        #si el tamano del string es menor a 8 se tiene que agregar los ceros restanbtes
        # a la derecha del string
        if current_ascii.size <= 8
          current_ascii = '0' * (8 - current_ascii.size) + current_ascii

        end
    
        current_ascii
      end
  
  
  end