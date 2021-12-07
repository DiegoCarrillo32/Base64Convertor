module AsciiConvertor

    def to_ascii(symbol)
      symbol.ord
    end

    def chain_to_ascii(value_to)
      separated_values = value_to.chars
      list_of_ascii = []
      separated_values.each do |char|
        list_of_ascii.append(to_ascii(char))
      end
      list_of_ascii
    end

    def convert_ascii_to_binary(ascii_list)
        binary_list = []
        ascii_list.each do |ascii|
          result = ascii_to_binary(ascii)
          binary_list.append(result)
    
    
        end
        binary_list
      end

      def ascii_to_binary(ascii)
        current_ascii = ''
        while ascii > 0
          if ascii % 2 == 0
            current_ascii = '0' + current_ascii
          else
            current_ascii = '1' + current_ascii
          end

          ascii = ascii / 2
        end

        if current_ascii.size <= 8
          current_ascii = '0' * (8 - current_ascii.size) + current_ascii
        end
    
        current_ascii
      end

    #implement
    def complete_bits(bits_amount, binary_list)
      new_binary_list = []
      binary_list.each do |binary|
        if binary.size < bits_amount
          new_binary_list.append('0' * (bits_amount - binary.size)+ binary)
        end
      end
      new_binary_list
    end


  end