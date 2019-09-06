puts "Enter a number you want:"

number = gets.chomp
number = number.to_i

r_number = rand(number) + 1

if r_number > 10
    print "YOU WON"
else
    print "YOU LOST"
end