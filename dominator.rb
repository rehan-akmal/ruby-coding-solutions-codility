def solution(a)
  return -1 if a.empty?
  count_hash = {}
  a.each do |el|
    count_hash.has_key?(el)? count_hash[el] += 1 : count_hash[el] = 1
  end      
  count_hash.values.max > a.length/2 ? a.index(count_hash.key(count_hash.values.max)) : -1
end
