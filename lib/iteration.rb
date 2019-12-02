def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  result = []
  src.length.times do |index|
    result.push("I love #{src[index][0]} and #{src[index][1]} on my pizza")
  end
  result
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  result = []
  src.length.times do |index|
    result.push((src[index][0] > src[index][1] ? src[index][0] : src[index][1]))
  end 
  result
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  result = 0
  src.length.times do |index|
    if src[index][0] % 2 == 0 && src[index][1] % 2 == 0
      result += (src[index][0] + src[index][1])
    end 
  end 
  result
end
