def solution(a, b, k)
  ((b/k.to_f).floor - (a/k.to_f).ceil) + 1
end
