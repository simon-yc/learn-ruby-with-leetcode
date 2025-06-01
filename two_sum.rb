# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
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