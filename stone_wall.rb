def solution(h)
  blocks = 0
  stack = []
  h.each do |el|
    while !stack.empty? && stack.last > el do
      stack.pop()
    end

    if !stack.empty? && stack.last == el
    else
      stack.push(el)
      blocks += 1
    end

  end
  blocks
end
