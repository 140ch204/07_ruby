def caesar_cipher(sentence, key) 
    crypted_sentence = ""
    sentence.each_char do |letter|
        crypted_sentence += crypt_letter(letter, key)
    end
    return crypted_sentence
end

def crypt_letter(letter, key)
    # crypt letter with caesar algorithm
    # return crypted letter

    key = key%26
    letter_chr = letter.ord

    crypted_letter_chr = letter_chr

    if ((letter_chr >= 97) && (letter_chr <= 122))
        # a = 97 ; z = 122 
        crypted_letter_chr = letter_chr + key
        (crypted_letter_chr > 122)? crypted_letter_chr += -26 : ""
    end

    if ((letter_chr >= 65) && (letter_chr <= 90))
        # A = 65 ; Z = 90
        crypted_letter_chr = letter_chr + key
        (crypted_letter_chr > 90)? crypted_letter_chr += -26 : ""
    end

    crypted_letter = crypted_letter_chr.chr
    return crypted_letter

end 

#caesar_cipher


#puts crypt_letter("a",27)

puts caesar_cipher("What a string!", 5) 