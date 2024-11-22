class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match?(/^\d+$/)

    delimiter = /,|\n/

    nums = numbers.split(delimiter).map(&:to_i)

    negatives = nums.select { |n| n.negative? }
  
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  
    nums.sum
  end
end
