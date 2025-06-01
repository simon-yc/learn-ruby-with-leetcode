# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    unique_index = 0
    
    (1...nums.length).each do |i|
        if nums[i] != nums[unique_index]
            unique_index += 1
            nums[unique_index] = nums[i]
        end
    end
    
    unique_index + 1
end