def solution(a)
  min_starting_point = 0
  min = nil
  a.each_with_index do |element, index|
    if index < a.length-2
      avg2 = (a[index] + a[index+1])/2.to_f
      avg3 = (a[index] + a[index+1] + a[index+2])/3.to_f
      curr_min  = [avg2, avg3].min
      if min.nil? || min > curr_min
        min = curr_min
        min_starting_point = index
      end
    end
  end

  avg2 = (a[a.length-2] + a[a.length-1])/2.to_f
  if (min && avg2 < min)
    min_starting_point = a.length-2
  end

  min_starting_point
end
