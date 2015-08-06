def sum_of_even_fibs(max)
  fib1 = 1
  fib2 = 2

  return 0 if max < 2
  return 2 if max == 2

  sum = 2

  while true
    fib1, fib2 = fib2, fib1 + fib2

    break if fib2 > max
    sum += fib2 if fib2 % 2 == 0
  end

  sum
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    max = gets.chomp.to_i
    puts sum_of_even_fibs(max)
  end
end

run
