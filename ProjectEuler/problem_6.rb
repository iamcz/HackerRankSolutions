def sum_of_squares(n) 
  n * (n + 1) * (2 * n + 1) / 6
end

def square_of_sum(n)
  (n * (n + 1) / 2) ** 2
end

def square_diff(n)
  square_of_sum(n) - sum_of_squares(n)
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    n = gets.chomp.to_i

    puts square_diff(n)
  end
end

run
