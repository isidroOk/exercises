require 'byebug'

# HOW
def game(number)
  r_number = rand(number) + 1

  if r_number > 10
    "YOU WON"
  else
    "YOU LOST"
  end
end


def user_interaction
  puts "Enter a number you want:"

  number = gets.chomp
  number = number.to_i

  print game(number)
end


# WHAT
describe '#game' do
  context 'when rand give us a number more than 10 and input is 1' do
    let(:input) { 1 }
    before do
      # Arrange
      allow(self).to receive(:rand).and_return(10)
    end

    it 'returns YOU WON' do
      result = game(input) # Act

      expect(result).to eq('YOU WON') # Assert
    end
  end

  context 'when rand give us a number less than 10 and input is 1' do
    let(:input) { 1 }
    before do
      # Arrange
      allow(self).to receive(:rand).and_return(8)
    end

    it 'returns YOU LOST' do
      result = game(input) # Act

      expect(result).to eq('YOU LOST') # Assert
    end
  end
end
