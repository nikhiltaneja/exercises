class Prime
  
  def self.nth(index)
    raise ArgumentError unless index > 0
    primes[index - 1]
  end


  private

  def self.primes
    @primes ||= find_primes
  end

  def self.find_primes
    possible_numbers = (2..150000).to_a
    possible_numbers.each do |a|
      possible_numbers.reject! do |b|
        (a != b) && (b % a == 0)
      end
    end

    puts "Found #{possible_numbers.count} primes"
    possible_numbers
  end
end
