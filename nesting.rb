def solution(s)
  return 1 if s.length == 0
  open_stack = []
  s.split("").each do |el|
    if el == "("
      open_stack.push(el)
    else
      return 0 if open_stack.length == 0
      open_stack.pop
    end
  end
  open_stack.length == 0 ? 1 : 0 
end
