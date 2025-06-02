# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    # O(log n) time complexity
    # O(1) space complexity

    left, right = 0, nums.length - 1

    while left <= right
        mid = (left + right) / 2

        if nums[mid] == target
            return mid
        elsif nums[mid] < target
            left = mid + 1
        else
            right = mid - 1
        end
    end

    left
end

# test cases
test_cases = [
    { nums: [], target: 5, expected: 0 },
    { nums: [1, 3, 5, 6], target: 5, expected: 2 },
    { nums: [1, 3, 5, 6], target: 2, expected: 1 },
]

test_cases.each do |test_case|
    result = search_insert(test_case[:nums], test_case[:target])
    raise "Test failed: expected #{test_case[:expected]}, got #{result}" unless result == test_case[:expected]
end

puts "All tests passed!"
