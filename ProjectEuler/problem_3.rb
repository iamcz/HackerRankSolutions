def largest_prime_factor(num)
  prime_factors(num).last
end

def prime_factors(num)
  factors = []

  while num > 1
    lowest_prime = factors.last || 2

    (lowest_prime..num).each do |f|
      if (num % f == 0)
        factors << f
        num /= f
        break
      end
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
