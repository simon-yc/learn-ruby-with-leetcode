# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    # O(n) time complexity
    # O(1) space complexity
    
    unique_index = 0
    
    (1...nums.length).each do |i|
        if nums[i] != nums[unique_index]
            unique_index += 1
            nums[unique_index] = nums[i]
        end
    end
    
    unique_index + 1
end