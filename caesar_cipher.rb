def caesar_cipher text, key
  key %= 26
  text.gsub(/([a-zA-Z])/){|character| apply_cipher(character.ord, key).chr}
end

def apply_cipher ascii, key
  shifted_ascii = ascii + key
  ascii.between?(65,90) && shifted_ascii > 90 ? shifted_ascii - 26 : shifted_ascii > 122 ? shifted_ascii -26 : shifted_ascii
end


puts caesar_cipher("What, a string!", 5)
puts caesar_cipher("Bmfy, f xywnsl!", -5)
puts caesar_cipher("IBM", -1)
puts caesar_cipher("HAL", 1)
puts caesar_cipher("What, a string!", -19)
puts caesar_cipher("Doha, h zaypun!", 19)
puts caesar_cipher("This is Zebra test", 5)
puts caesar_cipher("Ymnx nx Ejgwf yjxy", -5)
puts caesar_cipher("Say hello to the zebra", 7)
puts caesar_cipher("Zhf olssv av aol gliyh", -7)
puts caesar_cipher("Blue monkey yellow monkey!", 8)
puts caesar_cipher("Jtcm uwvsmg gmttwe uwvsmg!", -8)
puts caesar_cipher("What, a string!", 3)
puts caesar_cipher("Zkdw, d vwulqj!", -3)
