def n_ary_convert(n, base)
  ans = ""
  until n == 0
    ans.prepend((n%base).to_s)
    n = n/base
  end
  ans
end

def solution(n)
  num = n_ary_convert(n, 2)
  num << "z"
  zeros = num.split("1")
  zeros.delete("")
  zeros.map! {|num| num.length if !num.include?("z")}
  ans = zeros.compact.max
  if ans == nil
    return 0
  else
    ans
  end
end

p n_ary_convert(156, 2)
p n_ary_convert(3215, 6)



p binary_gap(529) # => 4
p binary_gap(20) # => 1
p binary_gap(15) # => 0
