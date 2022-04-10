# class converter
    
#   def toBase62(id)
#     s = '012345689abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
#     hash_str = ''
#     while id > 0 do
#       hash_str = s[id % 62] + hash_str
#       id /= 62
#     end
#     hash_str
#   end
#     def toBase10(base64Num)
#       alphabet = '012345689abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
#       result = 0
#       base = 62
#       base64Num.each_char { |curChar| result = result * base + alphabet.index(curChar) }
#       result
#     end
# end
  