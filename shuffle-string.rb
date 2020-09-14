def restore_string(s, indices)
    
    hash_of_letters = {}
    (0..indices.size - 1).each do | index |
        hash_of_letters[indices[index]] = s[index]
    end

    output = []
    (0..indices.size - 1).each do | index |
        output << hash_of_letters[index]
    end

    output.join('')
    
end
