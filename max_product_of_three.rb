def solution(a)
  a.sort!
  l = a.length
  [ (a[l-1] * a[l-2] * a[l-3]), (a[0] * a[1] * a[-1]) ].max
end
