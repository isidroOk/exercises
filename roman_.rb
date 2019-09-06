ROMAN_NUMBERS = {
1000 => "M",
900 => "CM",
500 => "D",
400 => "CD",
100 => "C",
90 => "XC",
50 => "L",
40 => "XL",
10 => "X",
9 => "IX",
5 => "V",
4 => "IV",
1 => "I" }

#ROMAN_NUMBERS.sort_by{ |k, v| -k }

puts ROMAN_NUMBERS

# every simbol can be repeated only three times

puts "Enter your decimal number:"

number = gets.chomp
number = number.to_i

# we need to decompose the number so we can get every digit separately

#example: 1513
m = (number/1000).to_i * 1000 # 1000
c = ((number-m)/100).to_i * 100 #500
d = ((number-m-c)/10).to_i * 10 #10
u = (number-m-c-d) #3


#this program only converts numbers that can be build from the roman numbers that exist on the hash

roman = ""
ROMAN_NUMBERS.each do |key, value|
  if key == m || key == c || key == d || key == u
    roman =  roman + value
  end
  
end

#ROMAN_NUMBERS.key?(m/m)
puts roman