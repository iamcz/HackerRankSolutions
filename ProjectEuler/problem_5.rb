def smallest_multiple(max)
  used_factors = Hash.new(0)
  product = 1

  (2..max).each do |factor|
    tmp_factors = used_factors.dup
    next_factor = factor

    tmp_factors.keys.reverse.each do |used_factor|
      while tmp_factors[used_factor] > 0
        break unless next_factor % used_factor == 0

        next_factor /= used_factor
        tmp_factors[used_factor] -= 1
      end
    end

    product *= next_factor
    used_factors[next_factor] += 1
  end

  product
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do 
    max = gets.chomp.to_i

    puts smallest_multiple(max)
  end
end

run

