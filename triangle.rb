def solution(a)
  a.sort!

  a.each_with_index do |element, index|
    next if index > (a.length - 3)
    p = a[index]
    q = a[index + 1]
    r = a[index + 2]
    return 1 if ( p+q > r && q+r > p && r+p > q)
  end

  return 0
end
