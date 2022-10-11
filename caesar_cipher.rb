
require 'pry-byebug'

def caesar_cipher (string, shift_factor) 
    alphabet = ('a'..'z').to_a
    modified_string = ""
    array_pre_mod_str = []


    string.split('').each do |letter| 

        
        original_index = alphabet.find_index(letter).to_i
        mod_index = original_index + shift_factor.to_i
        back_to_beginning_index = mod_index - alphabet.length 

        if mod_index >= alphabet.length
            array_pre_mod_str.push(alphabet[back_to_beginning_index])
        elsif letter == " "
            array_pre_mod_str.push(" ")
        elsif letter != " "
            array_pre_mod_str.push(alphabet[mod_index])
        end
        modified_string = array_pre_mod_str.join("")      

    end

    p modified_string

end
caesar_cipher("ricardo novais", 123)





