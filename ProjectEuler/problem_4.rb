def calculate_all_palindromes
  palindromes = []

  (100..999).each do |first_num|
    (first_num..999).each do |second_num|
      product = first_num * second_num
      
      if product.to_s == product.to_s.reverse
        palindromes << product
      end
    end
  end

  palindromes
end

ALL_PALINDROMES = calculate_all_palindromes

def palindrome_num(max) 
  ALL_PALINDROMES.select { |pal| pal <= max }.max
end

def run
  num_tests = gets.chomp.to_i

  num_tests.times do 
    max = gets.chomp.to_i

    puts palindrome_num(max)
  end
end

run
