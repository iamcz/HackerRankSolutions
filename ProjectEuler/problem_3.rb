def largest_prime_factor(num)
  prime_factors(num).last
end

def prime_factors(num)
  factors = [2]

  while num > 1
    sqrt = Math.sqrt(num).floor

    f = factors.last
    while f <= sqrt
      if (num % f == 0)
        factors << f
        num /= f
        break
      end

      f += 1
    end

    if f > sqrt 
      factors << num
      num = 1
    end
  end

  factors
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    num = gets.chomp.to_i
    puts largest_prime_factor(num)
  end
end

run
