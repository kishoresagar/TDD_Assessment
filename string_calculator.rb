#String Calculator
def add(nums)
	return 0 if nums.empty?
	nums.split(",").map(&:to_i).sum
end

puts add("")
puts add("1")
puts add("1,5")

#Step2: Handle Amount of numbers
def add(nums)
	return 0 if nums.empty?
	nums.split(",").map(&:to_i).sum
end
puts add("1,5,6,7")

#Step3: Handle new lines between numbers
def add(nums)
	return 0 if nums.empty?
	nums.split(/,|\n/).map(&:to_i).sum
end
puts add("1\n2,3")

#Step4: Support Different delimiters
def add(nums)
	return 0 if nums.empty?
	if nums.start_with?("//")
		nums = nums.split("\n")[1]
	end
	nums.split(/;/).map(&:to_i).sum
end
puts add("//;\n1;2")

#Step5: Handle Negative Numbers
def add(nums)
  return 0 if nums.empty?
  nums_array = nums.split(",").map(&:to_i)
  negatives = nums_array.select { |n| n < 0 }
  if negatives.any?
    raise "negative numbers not allowed: #{negatives.join(",")}"
  end
  nums_array.sum
end
begin
  puts add("1,-2,3,-4")
rescue StandardError => exception
  puts "Exception: #{exception.message}"
end