def solution(a)
  a.push(0).sort!.uniq!
  a = a[(a.find_index(0)+1)..-1]
  return 1 if a.length == 0
  counter = 1
  loop do
    return counter if a[counter-1] != counter
    counter += 1
  end
end
