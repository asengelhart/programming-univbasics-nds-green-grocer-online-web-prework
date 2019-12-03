def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0 
  while counter < collection.length do 
    if collection[counter][:item] == name 
      return collection[counter]
    else 
      counter += 1
    end 
  end 
  nil # item was not found
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  result = []
  i = 0 
  while i < cart.length do 
    item_name = cart[i][:item]
    result_index = 0 
    item_found = false  
    while result_index < result.length do 
      current_item = result[result_index]
      if current_item[:item] == item_name
        current_item[:count] += 1 
        item_found = true
        break
      end 
      result_index += 1 
    end 
    unless item_found
      new_entry = find_item_by_name_in_collection(item_name, cart)
      new_entry[:count] = 1 
      result << new_entry
    end 
    i += 1 
  end
  result 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
