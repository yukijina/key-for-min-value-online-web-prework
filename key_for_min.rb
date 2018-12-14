# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# def key_for_min_value(name_hash)
#   text =[]
#   name_hash.collect do |key, value|
#     text << value
#   end 
#   text
  
#   if text == []
#   nil
#   elsif text[0]<text[1] && text[0]<text[2]
#     smallest = text[0]
#   elsif text[1]<text[2]
#     smallest = text[1]
#   else
#     smallest = text[2]
#   end
 
#   current_key = []
#   name_hash.collect do |key,value|
#     if value == smallest 
#     key
#     current_key << key
#     elsif value == nil
#     nil
#     end
#   end
  
#   if current_key  == []
#   nil
#   else
#   current_key.join("").to_sym
#   end
# end

#Refactor
def key_for_min_value(name_hash)
  #collect num to array, store in valiable - num_array
  num_array = name_hash.collect {|name, num| num }
  
  #check the smallest number in array
  if num_array == []
    nil 
  elsif num_array[0] < num_array[1] && num_array[0]<num_array[2]
    smallest = num_array[0]
  elsif num_array[1] < num_array[2]
    smallest = num_array[1]
  else 
    smallest = num_array[2]
  end
  
  #get the name that value has the smallest number
  final = name_hash.collect do |name,num| 
            name if num == smallest 
          end
  if final == []
    nil  #return nil is hash is empty
  else
    final.compact.join.to_sym
  end
 end 