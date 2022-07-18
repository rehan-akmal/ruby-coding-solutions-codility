def solution(n)
  max_gap = 0
  temp_gap = 0
  counting = false
  num = n.to_s(2)
  num.split("").each do |el|
    
    if el == "1"
      if counting  
        max_gap = temp_gap  if temp_gap > max_gap
        temp_gap = 0
      else
        counting = true
      end
    else
      if counting
        temp_gap += 1
      end
    end
  end
  max_gap
end
