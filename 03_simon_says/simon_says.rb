#write your code here
def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, repeat = 2)
    sentence = ""
    repeat.times do 
        sentence = sentence + word + " "
    end
    return sentence.delete_suffix(" ")
end

def start_of_word(word, n)
    chars = word.split('')
    start = ""
    n.times do |i|
        start = start + chars[i]
    end
return start
end

def first_word(sentence)
    words = sentence.split(" ")
    return words[0]
end

def titleize(word)
    words = word.split(" ")
    n = words.length
    n.times do |i|
        #do not capitalize articles
        if words[i] != "and" && words[i] != "the" && words[i] != "over"
            words[i] = words[i].capitalize
        end
    end

    #capitalizes first word if it is an article
    words[0] = words[0].capitalize
    return words.join(" ")
end