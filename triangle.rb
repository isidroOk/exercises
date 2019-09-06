puts "Enter the base for the triangle:"

base = gets.chomp
base = base.to_i

for i in(1..base)
    for j in (1..i)
        print("*")
    end
    print("\n")
end