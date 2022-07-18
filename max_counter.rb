def solution(n, a)
  counter_arr = Array.new(n, 0)
  current_max, last_increase = 0, 0
  a.each_with_index do |element, index|
    if element > n
      last_increase = current_max
    else
      counter_arr[element-1] = [counter_arr[element-1], last_increase].max
      counter_arr[element-1] += 1
      current_max = [current_max, counter_arr[element-1]].max
    end
  end
  n.times do |index|
    counter_arr[index] = [counter_arr[index], last_increase].max
  end

  counter_arr
end
