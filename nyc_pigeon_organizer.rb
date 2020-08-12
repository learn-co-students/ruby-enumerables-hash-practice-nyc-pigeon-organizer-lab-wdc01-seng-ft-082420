def nyc_pigeon_organizer(data)
  
  new_pigeon_list = { } ##making a new hash as our return value!
  
  data.each do |category, values|
    ##key is the category (ie color), value is the hash of options contained there (ie purple, grey, white)
    
    values.each do |value, names|
      ##key is the value (ie purple), value is the array of names that are contained there (ie Theo, Peter Jr., Lucky)
      
      names.each do |name|
        ##we're in the inner part! first, we're gonna take the name and see if it is a key in our new pigeon list. if not, we'll add it with an empty hash as its value
        
        if !new_pigeon_list.key?(name)
          new_pigeon_list[name] = {}
        end
        
        ##next, we look and see if our name hash has the category as a key. if not, we'll add it with an empty array as its value
        
        if !new_pigeon_list[name].key?(category)
          new_pigeon_list[name][category] = []
        end
        
        ##finally, we add the value (ie purple) to the category hash (ie color) of our pigeon (ie Theo)
        new_pigeon_list[name][category].push(value.to_s)
      end
    end
  end
  
  new_pigeon_list
  
end

#PSEUDOCODE:
# steps:
# take original data - find the strings for names inside the AoHoH
# 