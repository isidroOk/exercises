def user_interaction
  puts "Enter the base for the triangle:"

  base = gets.chomp
  base = base.to_i

  print triangle(base)
end

def triangle(base)
  result = ""
  for i in(1..base)
    for j in (1..i)
      result << "*"
    end
    result << "\n"
  end
  result
end

describe '#triangle' do
  it 'returns a triangle' do
    result = "*\n"\
             "**\n"\
             "***\n"
      expect(triangle(3)).to eq(result)
  end
end
