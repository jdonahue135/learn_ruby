#write your code here
def translate(s)
    s = s.split(" ")
    length = s.length
    length.times do |i|    
        w = s[i]
        if w[0] == "a" || w[0] == "e" || w[0] == "i" || w[0] == "o" || w[0] == "u"
            w = w + "ay"
        elsif w[1] == "a" || w[1] == "e" || w[1] == "i" || w[1] == "o" || w[1] == "u"
            if w[0..1] == "qu"
                char = w[0]+w[1]
                w = w[2...] + char + "ay"
            else
                char = w[0]
                w = w[1...] + char + "ay"
            end
        elsif w[2] == "a" || w[2] == "e" || w[2] == "i" || w[2] == "o" || w[2] == "u"
            if w[1..2] == "qu"
                char = w[0]+w[1]+w[2]
                w = w[3...] + char + "ay"
            else
                char = w[0]+w[1]
            w = w[2...] + char + "ay"
            end
        else
            char = w[0]+w[1]+w[2]
            w = w[3...] + char + "ay"
        end
        s[i] = w
    end
    return s.join(" ")
end