def return_first(arr)
  arr[0]
end 

a = [{:i => 0}, {:j => 1}]
b = return_first(a)
a.push(b)
a[2][:i] = 2 
puts a