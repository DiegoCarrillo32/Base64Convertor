require_relative 'ascii'
require_relative 'asciiToBinary8'
require_relative 'binaryToBits6'
require_relative 'binaryToDecimal'

#TODO : Ordenar todo esto porque esta super spaghetti

ascii = AsciiConverter.new('Test')
asciiList = ascii.ChainToAscii
ascii8 = AsciiToBinary8.new(asciiList)
res= ascii8.ConvertAsciiToBinary
binary6 = BinaryToBits6.new(res)
binaries =  binary6.ConvertToBits6
decimal = BinaryToDecimal.new(binaries)
decimal.ConvertToDecimal






