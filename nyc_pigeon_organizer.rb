require 'pry'

def nyc_pigeon_organizer(data) 
 final_results = data.each_with_object({}) do |(key, value), final_array|
   value.each do |inner_key, name|
     name.each do |name|
       if not final_array[name]
         final_array[name] = {}
         #binding.pry
       end
         if !final_array[name][key]
           !final_array[name][key] = []
           #binding.pry
         end
         final_array[name][key]<<(inner_key.to_s)
       end
     end
   end
end

#look back at this. 