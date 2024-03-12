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
