require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  new_hash = {}
  names = []
  
  data.each { |key, value|
    value.each { |k, v|
      names << v
    }
  }
  
  names = names.flatten
  names = names.uniq
  
  names.each { |name|
    key_hash = {}
        
    data.each { |key2, value2|
      k_array = []
      value2.each { |k1, v1|
        if v1.any? name
          k_array << k1.to_s
        end
      }
      key_hash[key2] = k_array
    }
    new_hash[name] = key_hash
  }
  new_hash
end
