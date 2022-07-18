def solution(a)
  (1..(a.length+1)).inject(:+) - a.inject(0){ |sum, num| sum + num } 
end
