# String Calculator

This project implements a simple string calculator with the following features:

- **Empty string** returns `0`.
- **Single number** returns the number itself.
- **Multiple comma-separated numbers** return the sum of those numbers.
- **Newline-separated numbers** can be handled.
- **Custom delimiters** are supported.
- **Negative numbers** raise an exception showing all negative numbers.

## Prerequisites

Ensure you have the following installed:
- Ruby (>= 2.0)
- Bundler
- RSpec (for running tests)

If you don't have Ruby installed, you can install it from [here](https://www.ruby-lang.org/en/documentation/installation/).

## Installation

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/StringCalculator.git
cd StringCalculator


## Install the required dependencies:
bundle install


# Running the Calculator
    You can use the add method of the StringCalculator class to calculate the sum of numbers.

# Example Usage:
    require 'string_calculator'

    puts StringCalculator.add("")         # Outputs: 0
    puts StringCalculator.add("1")        # Outputs: 1
    puts StringCalculator.add("1,5")      # Outputs: 6
    puts StringCalculator.add("1\n2,3")   # Outputs: 6
    puts StringCalculator.add("//;\n1;2;3") # Outputs: 6

# Run the tests using the following command:
    rspec

