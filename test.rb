def return_first(arr)
  arr[0]
end 

a = [{:i => 0}, {:j => 1}]
a.push(return_first(a))
a[2][:i] = 2 
puts a