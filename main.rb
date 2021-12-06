require_relative 'AsciiConvertor'
require_relative 'BinaryConvertor'
require_relative 'Base64Convertor'
ascii = AsciiConvertor.new
base64 = Base64Convertor.new
binary = BinaryConvertor.new

#primero se pasa el string a numeros ascii con la clase AsciiConvertor
list_of_ascii = ascii.ChainToAscii('Hola Nativos Trainer')
#luego se convierten de ascii a bninario con AsciiConvertor
list_of_binary = ascii.ConvertAsciiToBinary(list_of_ascii)
#luego se dividen en bloques de 6 bits con la clase BinaryConvertor
list_of_bits6 = binary.ConvertToBits6(list_of_binary)
#luego se pasa de bloques de 6 a decimales con la clase BinaryConvertor
list_of_decimals =  binary.ConvertToDecimal(list_of_bits6)
#por ultimo se toma esta lista de decimnales y se busca en el diccionario 64 su respectivo valor
puts base64.ConvertDecimalsToBase64(list_of_decimals)

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






