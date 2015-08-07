class Array
  def sum
    self.inject(:+)
  end
end

def run
  num_elems = gets.chomp.to_i

  puts gets.chomp.split.map(&:to_i).sum
end

run
