class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    # Default delimiter: comma and newline
    delimiter = /,|\n/

    # Split the numbers using the delimiter and map to integers
    nums = numbers.split(delimiter).map(&:to_i)

    # Check for negative numbers
    negatives = nums.select { |n| n.negative? }
  
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  
    # Return the sum of all numbers
    nums.sum
  end
end
