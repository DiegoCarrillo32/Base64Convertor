require_relative 'ascii'
require_relative 'asciiToBinary8'
require_relative 'binaryToBits6'
ascii = AsciiConverter.new('Test123456')
asciiList = ascii.ChainToAscii
ascii8 = AsciiToBinary8.new(asciiList)
res= ascii8.ConvertAsciiToBinary
binary6 = BinaryToBits6.new(res)
puts binary6.ConvertToBits6






