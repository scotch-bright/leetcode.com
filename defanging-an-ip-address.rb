def defang_i_paddr(address)
    address.gsub(".", '[.]')
end


puts 'Yay!' if defang_i_paddr('1.1.1.1') == '1[.]1[.]1[.]1'
puts 'Yay!' if defang_i_paddr('255.100.50.0') == '255[.]100[.]50[.]0'
