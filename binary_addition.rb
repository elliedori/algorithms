def n_ary_add(arr1, arr2, base)
  size1 = arr1.length
  size2 = arr2.length

  ans = ""
  carry = 0
  if size1 > size2
    (size1-size2).times {arr2.unshift(0)}
  end

  if size2 > size1
    (size2-size1).times {arr1.unshift(0)}
  end

  until arr1.empty? && arr2.empty?
    sum = arr1.pop + arr2.pop + carry
    if sum >= base
      ans.prepend((sum%base).to_s)
      carry = sum/base
    else
      ans.prepend(sum.to_s)
      carry = 0
    end
  end

  if carry != 0
    ans.prepend(carry.to_s)
  end

  ans


end

p n_ary_add([1, 1, 1, 1],[1, 0, 1, 0],2)
p n_ary_add([1, 0, 0, 1],[1, 0],2)
p n_ary_add([1, 2, 3, 4],[1, 2],5)


