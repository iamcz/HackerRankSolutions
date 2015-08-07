PRIMES = [2]

def nth_prime(n)
  while PRIMES.count < n
    p = PRIMES.last + 1
    
    p += 1 while PRIMES.any? { |f| p % f == 0 }
    PRIMES << p
  end

  PRIMES[n-1]
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    n = gets.chomp.to_i

    puts nth_prime(n)
  end
end

run
