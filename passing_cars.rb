def solution(a)
  counter = 0
  zero_counter = 0
  
  a.each_with_index do |element, index|
    if element == 0
      zero_counter += 1
    else
      counter += zero_counter
      return -1 if counter == 1000000000
     end
  end
  counter
end
