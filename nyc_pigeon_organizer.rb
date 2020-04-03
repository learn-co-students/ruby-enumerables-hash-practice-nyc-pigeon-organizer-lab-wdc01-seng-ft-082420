def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |(attribute, value_hash)|
    value_hash.each do |value, name_array| 
      name_array.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        #do I need to include this in if block?
        pigeon_list[name][attribute] = []
      end
    end
  end
  pigeon_list.each do |(name, attribute_hash)|
    attribute_hash.each do |(attribute, value_array)|
      pigeon_data.each do |(attribute2, value_hash)|
        value_hash.each do |value, name_array|
          name_array.each do |name2|
            if name2 == name &&  attribute2 == attribute
              value_array << value.to_s
            end
          end
        end
      end
    end
    pigeon_list
  end 
end