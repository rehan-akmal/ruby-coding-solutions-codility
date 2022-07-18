def solution(s)
  s = s.split("")
  tmp_stack = []
  s.each do |element|
      if tmp_stack.empty?
        tmp_stack.push(element)
      else
        if ["}", "]", ")"].include?(element)
          if tmp_stack.last == "(" && element == ")" ||
            tmp_stack.last == "{" && element == "}" ||
            tmp_stack.last == "[" && element == "]" 
            tmp_stack.pop
          else
            tmp_stack.push(element)
          end
        else
          tmp_stack.push(element)
        end
      end
    end
  tmp_stack.length == 0 ? 1 : 0 
end
