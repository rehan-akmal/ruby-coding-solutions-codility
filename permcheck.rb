def solution(a)
  return 0 if a.length != a.uniq.length
  (1..a.length).inject(:+) == a.inject(:+)? 1 : 0
end
