# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    newStr=""
    i=0;

while i< str.length
    count=1

    while str[i]==str[i+1]
        i+=1
        count+=1
        if i+1==str.length
        break
        end
    end
newStr+=count.to_s
newStr+=str[i]
i+=1

end

return newStr;
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
