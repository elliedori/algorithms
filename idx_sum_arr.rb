# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
  transformed = nums.map.with_index {|num, idx| [num, idx]}
  ans = nums.combination(2).find{|x, y| x + y == target}
  if ans.nil?
    nil
  elsif ans.uniq.length == 1
    transformed.map! {|num| num[1] if num[0] == ans.first}.compact
  else
    ans.map! {|x| nums.index(x)}
  end
end


p two_sum([0,4,3], 7) # indices: [0, 3]