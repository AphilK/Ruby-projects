puts "Bem-vindo usuário! Vamos trabalhar com Sequências cíclicas"

puts "Insira a palavra que irá se repetir "
word = gets.chomp
puts "Agora a posição da letra desejada: "
position = gets.chomp.to_i

length = word.length


letter_position = position % length
letter_real = letter_position - 1

palavra = []
word.each_char {|ch| palavra.push(ch)}

puts "Essa é a letra que corresponde a posição dada: "
puts word[letter_real]
puts "Você quer usar outra palavra ? (s / n)"
again = gets.chomp

if again == "s"
    loop do
        puts "Insira a palavra que irá se repetir "
        word = gets.chomp
        puts "Agora a posição da letra desejada: "
        position = gets.chomp.to_i

        length = word.length


        letter_position = position % length
        letter_real = letter_position - 1

        palavra = []
        word.each_char {|ch| palavra.push(ch)}

        puts palavra[letter_real]
        puts "Você quer usar outra palavra ? (s / n)"
        again = gets.chomp

        if again == "n"
            break
        end
    end
end
