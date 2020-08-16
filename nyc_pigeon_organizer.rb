def nyc_pigeon_organizer(data)
  # write your code here!
result_array= data.each_with_object({}) do |(key, value), result_array|
  value.each do |inner_key,name|
    name.each do |name|
      if !result_array [name]
        result_array[name]={}
         end 
         if !result_array[name][key]
           result_array[name][key]=[]
         end
         result_array[name][key].push(inner_key.to_s)
  
  end
end
end
end
