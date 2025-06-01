# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    # O(n) time complexity
    # O(n) space complexity
    
    complement = {}
    nums.each_with_index do |number, index|
        if complement.key?(number)
            return [complement[number], index]
        else
            diff = target - number
            complement[diff] = index
        end
    end
end

# test cases
test_cases = [
    (nums = [2, 7, 11, 15], target = 9, expected = [0, 1]),
    (nums = [3, 2, 4], target = 6, expected = [1, 2]),
    (nums = [3, 3], target = 6, expected = [0, 1])
]

test_cases.each do |nums, target, expected|
    result = two_sum(nums, target)
    raise "Test failed: expected #{expected}, got #{result}" unless result == expected
end

puts "All tests passed!"