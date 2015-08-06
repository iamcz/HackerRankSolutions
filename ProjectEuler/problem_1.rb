def threes_and_fives(num)
  sum_of_multiples_under(num, 3) + 
    sum_of_multiples_under(num, 5) -
    sum_of_multiples_under(num, 15)
end

def sum_of_multiples_under(num, k) 
  m = (num - 1) / k

  k * (m * (m + 1)) / 2
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    num = gets.chomp.to_i
    puts threes_and_fives(num)
  end
end

run
