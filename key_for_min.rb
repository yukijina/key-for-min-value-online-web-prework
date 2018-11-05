# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  text =[]
  name_hash.collect do |key, value|
    text << value
  end 
   text
  
  if text[0]<text[1] && text[0]<text[2]
    smallest = text[0]
  elsif text[1]<text[2]
    smallest = text[1]
  else
    smallest = text[2]
  end
 
  current_key = []
  name_hash.collect do |key,value|
    if value == smallest 
    key
    current_key << key
    end
  end
  current_key
    
end