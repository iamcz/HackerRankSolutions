def largest_prime_factor(num)
  current_largest = 2

  while num > 1
    sqrt = Math.sqrt(num).floor

    f = current_largest
    while f <= sqrt
      if (num % f == 0)
        current_largest = f
        num /= f
        break
      end

      f += 1
    end

    if f > sqrt 
      current_largest = num
      num = 1
    end
  end

  current_largest
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    num = gets.chomp.to_i
    puts largest_prime_factor(num)
  end
end

run
