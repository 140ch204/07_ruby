def word_counter(corpus,dictionnary)

    word_counter_hash = {}

    corpus_array = corpus.split

    corpus_array.each do |corpus_word|

        word_counter_hash.merge!(one_word_counter(corpus_word,dictionnary)) { |key, v1, v2| v1+v2 }

    end
    word_counter_hash
end

def one_word_counter(word_to_analyze,dictionnary )

    
    one_word_counter_hash = {}

    dictionnary.each do |dicti_word|
        
        (word_to_analyze.downcase.include? dicti_word)? one_word_counter_hash.merge!({dicti_word => 1}) : ""
        
    end
    one_word_counter_hash
end



def shakespeare
    dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
    corpus = File.read('shakespeare.txt')

    word_counter(corpus,dictionnary)
end

def shakespeare_swear_words
    dictionnary = File.read('swear_words.txt').split
    corpus = File.read('shakespeare.txt')

    word_counter(corpus,dictionnary)
end


def perform 
    
    print one_word_counter("below", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
    puts 
    print word_counter("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
    puts
    print shakespeare
    puts
    print shakespeare_swear_words
    puts

end

perform