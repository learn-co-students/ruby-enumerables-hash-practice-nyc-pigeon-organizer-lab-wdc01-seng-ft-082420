def nyc_pigeon_organizer(data)
  #create empty hash to store data 
  pigeon_list = {}
  #run through data 
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        #gather/ return names to new hash  
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        #gather/ return categories to new array 
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        #gather/ return stats & turn to string 
        pigeon_list[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  #call new hash 
  pigeon_list
end