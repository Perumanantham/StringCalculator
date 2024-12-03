class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    # Check for custom delimiter in the format //delimiter\nnumbers...
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)  # Split on the first newline
      delimiter = header[2..]  # Extract custom delimiter (after "//")
      numbers = numbers.gsub("\n", delimiter)  # Replace newlines with the custom delimiter
    else
      delimiter = /,|\n/  # Default delimiters: comma and newline
    end

    # Split the numbers using the delimiter and convert to integers
    nums = numbers.split(delimiter).map(&:to_i)

    # Check for negative numbers
    negatives = nums.select { |n| n.negative? }
  
    # raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    raise NegativeNumberError.new(negatives) if negatives.any?
  
    # Return the sum of all numbers
    nums.sum
  end
end

class NegativeNumberError < StandardError
  def initialize(negatives)
    super("negative numbers not allowed: #{negatives.join(', ')}")
  end
end