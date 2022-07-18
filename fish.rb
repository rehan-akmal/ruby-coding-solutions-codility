def solution(a, b)
  deaths = 0
  stack = []
  b.each_with_index do |el, i|
    if b[i] == 1
      stack.push(i)
      next
    end

    while stack.length > 0
      deaths += 1
      if a[i] > a[stack.last]
        stack.pop()
      else
        break
      end
    end
  end
  b.length - deaths
end
