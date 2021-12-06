require_relative 'AsciiConvertor'
require_relative 'BinaryConvertor'

ascii = AsciiConvertor.new
list_of_ascii = ascii.ChainToAscii('Hola Mundo')
list_of_binary = ascii.ConvertAsciiToBinary(list_of_ascii)
binary = BinaryConvertor.new
list_of_bits6 = binary.ConvertToBits6(list_of_binary)
list_of_decimals =  binary.ConvertToDecimal(list_of_bits6)

Alphabet = {
  '0' => 'A',
  '1' => 'B',
  '2' => 'C',
  '3' => 'D',
  '4' => 'E',
  '5' => 'F',
  '6' => 'G',
  '7' => 'H',
  '8' => 'I',
  '9' => 'J',
  '10' => 'K',
  '11' => 'L',
  '12' => 'M',
  '13' => 'N',
  '14' => 'O',
  '15' => 'P',
  '16' => 'Q',
  '17' => 'R',
  '18' => 'S',
  '19' => 'T',
  '20' => 'U',
  '21' => 'V',
  '22' => 'W',
  '23' => 'X',
  '24' => 'Y',
  '25' => 'Z',
  '26' => 'a',
  '27' => 'b',
  '28' => 'c',
  '29' => 'd',
  '30' => 'e',
  '31' => 'f',
  '32' => 'g',
  '33' => 'h',
  '34' => 'i',
  '35' => 'j',
  '36' => 'k',
  '37' => 'l',
  '38' => 'm',
  '39' => 'n',
  '40' => 'o',
  '41' => 'p',
  '42' => 'q',
  '43' => 'r',
  '44' => 's',
  '45' => 't',
  '46' => 'u',
  '47' => 'v',
  '48' => 'w',
  '49' => 'x',
  '50' => 'y',
  '51' => 'z',
  '52' => '0',
  '53' => '1',
  '54' => '2',
  '55' => '3',
  '56' => '4',
  '57' => '5',
  '58' => '6',
  '59' => '7',
  '60' => '8',
  '61' => '9',
  '62' => '+',
  '63' => '/',

}
encoded_string = ''
for i in 0..list_of_decimals.length-1
  encoded_string += Alphabet[list_of_decimals[i].to_s]

end
while ( encoded_string.size % 4 ) != 0
  encoded_string += '='
end

puts encoded_string

#TODO : Ordenar todo esto porque esta super spaghetti

# ascii = AsciiConverter.new('Test')
# asciiList = ascii.ChainToAscii
# ascii8 = AsciiToBinary8.new(asciiList)
# res= ascii8.ConvertAsciiToBinary
# binary6 = BinaryToBits6.new(res)
# binaries =  binary6.ConvertToBits6
# decimal = BinaryToDecimal.new(binaries)
# decimal.ConvertToDecimal


#Nuevo sistema
#






