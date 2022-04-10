class Converter
    
    CharSet = '012345689abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    Base = CharSet.length

    def self.encode(id)
        hash_str = ''
        while id > 0 do
            hash_str = CharSet[id % Base] + hash_str
            id /= Base
        end
        hash_str
    end
    def self.decode(encodedNum)
        result = 0
        encodedNum.each_char { |curChar| result = result * Base + CharSet.index(curChar) }
        result
    end
end
  