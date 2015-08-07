def primes_below(num)
  return [] if num < 2

  primes = [2]

  (3..num).each do |n|
    primes << n if primes.none? { |p| n % p == 0 }
  end
  
  primes
end

def largest_prime_factor(num)
  primes = primes_below(num)

  return num if primes.last == num

  largest = nil
  
  primes.each do |p|
    break if p > num / 2
    largest = p
  end

  return largest
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do
    num = gets.chomp.to_i
    puts largest_prime_factor(num)
  end
end

run
