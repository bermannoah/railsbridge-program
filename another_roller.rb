class Die

  def initialize(sides)
    @sides = sides
  end

  def generate_die_roll
    rand(@sides) + 1
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_array << generate_die_roll
    end
    total = 0
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    total
  end
end

puts "We're rolling a six sided die!"
puts Die.new(6).roll

puts "Now we're rolling two 20 sided die!"
puts Die.new(20).roll(2)
