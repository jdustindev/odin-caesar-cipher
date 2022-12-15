def caesar_cipher(string, shift_factor)
    ciphered_string = string.split('').map do |char|
        new_char = char unless (char.between?('A', 'Z') || char.between?('a', 'z'))

        # implement cipher here
        if char.between?('A', 'Z')
            shift_factor -= 26 if (char.ord + shift_factor).chr > 'Z'
            new_char = (char.ord + shift_factor).chr
        end

        if char.between?('a', 'z')
            shift_factor -= 26 if (char.ord + shift_factor).chr > 'z'
            new_char = (char.ord + shift_factor).chr
        end

        new_char
    end
end

puts caesar_cipher("What a string!", 5)