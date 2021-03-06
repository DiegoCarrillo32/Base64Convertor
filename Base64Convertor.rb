require_relative 'AsciiConvertor'
require_relative 'BinaryConvertor'
class Base64Convertor
  include AsciiConvertor
  include BinaryConvertor
  Alphabet = {

    '0' => 'A', '1' => 'B', '2' => 'C', '3' => 'D', '4' => 'E', '5' => 'F', '6' => 'G', '7' => 'H', '8' => 'I',
    '9' => 'J', '10' => 'K', '11' => 'L', '12' => 'M', '13' => 'N', '14' => 'O', '15' => 'P', '16' => 'Q', '17' => 'R', '18' => 'S', '19' => 'T',
    '20' => 'U', '21' => 'V', '22' => 'W', '23' => 'X', '24' => 'Y', '25' => 'Z', '26' => 'a', '27' => 'b', '28' => 'c', '29' => 'd', '30' => 'e',
    '31' => 'f', '32' => 'g', '33' => 'h', '34' => 'i', '35' => 'j', '36' => 'k', '37' => 'l', '38' => 'm', '39' => 'n', '40' => 'o', '41' => 'p',
    '42' => 'q', '43' => 'r', '44' => 's', '45' => 't', '46' => 'u', '47' => 'v', '48' => 'w', '49' => 'x', '50' => 'y', '51' => 'z', '52' => '0',
    '53' => '1', '54' => '2', '55' => '3', '56' => '4', '57' => '5', '58' => '6', '59' => '7', '60' => '8', '61' => '9', '62' => '+', '63' => '/',

  }

  def convert_to_base_64(string)
    list_of_ascii = chain_to_ascii(string)
    list_of_binary = convert_ascii_to_binary(list_of_ascii)
    list_of_bits6 = convert_to_bits6(list_of_binary)
    list_of_decimals = convert_to_decimal(list_of_bits6)
    convert_decimals_to_base_64(list_of_decimals)

  end

  def convert_decimals_to_base_64(list_of_decimals)

    encoded_string = ''
    for i in 0..list_of_decimals.length-1
      encoded_string += Alphabet[list_of_decimals[i].to_s]
    end

    while ( encoded_string.size % 4 ) != 0
      encoded_string += '='
    end

    encoded_string

  end




end
