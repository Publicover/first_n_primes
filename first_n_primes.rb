prime_array = [2]
counter = 2
possible_prime = 3

puts "\nHow many primes do you want to see?\n"
n_primes = gets.chomp

while prime_array.length < n_primes.to_i
  loop do
    if counter == (possible_prime + 1) / 2
      prime_array << possible_prime
      possible_prime += 2
      counter = 3
    elsif possible_prime % counter != 0
      counter += 1
    else
      counter = 3
      possible_prime += 2
      break
    end
  end
end

puts "\nArray of #{n_primes} elements coming your way:"
puts "\n"
print prime_array
puts "\n"
puts "\nUse this knowledge for the power of good."
puts "\n"
