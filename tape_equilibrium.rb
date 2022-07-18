def solution(a)
  sum_left = 0
  sum_right = a.inject(:+)
  minimal_diff = nil
  (a.length-1).times do |index|
    sum_left += a[index]
    sum_right -= a[index]
    diff = (sum_left - sum_right).abs
    minimal_diff = diff if minimal_diff.nil? || diff < minimal_diff
  end
  minimal_diff
end
