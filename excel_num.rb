def excel_num(n)
    result = ""
 
    while n > 0 do
      index = (n-1) % 26
      result =(index + 'A'.ord).chr + result
      n = (n-1) / 26
     end
     
     puts result
end
