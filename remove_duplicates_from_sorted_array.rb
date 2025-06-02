# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    # O(n) time complexity
    # O(1) space complexity

    return 0 if nums.empty?

    unique_index = 0

    (1...nums.length).each do |i|
        if nums[i] != nums[unique_index]
            unique_index += 1
            nums[unique_index] = nums[i]
        end
    end

    unique_index + 1
end

# test cases
test_cases = [
    { nums: [], expected_length: 0, expected_content: [] },
    { nums: [1, 1, 2], expected_length: 2, expected_content: [1, 2] },
    { nums: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4], expected_length: 5, expected_content: [0, 1, 2, 3, 4] },
    { nums: [1, 2, 3, 4, 5], expected_length: 5, expected_content: [1, 2, 3, 4, 5] },
    { nums: [1, 1, 1, 1, 1], expected_length: 1, expected_content: [1] },
]

test_cases.each do |test_case|
    length = remove_duplicates(test_case[:nums])
    raise "Test failed: length" unless length == test_case[:expected_length]
    raise "Test failed: content" unless test_case[:nums][0...length] == test_case[:expected_content]
end

puts "All tests passed!"
