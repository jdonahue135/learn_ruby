class Book
    attr_accessor :title, :author
    
    def title
        words = @title.split(" ")
        n = words.length
        n.times do |i|
            #do not capitalize articles
            if words[i] != "and" && words[i] != "the" && words[i] != "over" && words[i] != "in" && words[i] != "of" && words[i] != "a" && words[i] != "an"
                words[i] = words[i].capitalize
            end
        end
        #capitalizes first word if it is an article
        words[0] = words[0].capitalize
        words.join(" ")
    end

end