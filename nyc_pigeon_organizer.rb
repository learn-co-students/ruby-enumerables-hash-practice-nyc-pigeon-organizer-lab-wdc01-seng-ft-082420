require 'pry'


def initalize_data
  {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
end

def bird_names(data)
  
  data = data[:gender][:male] + data[:gender][:female]
  
  return data

end 

def nyc_pigeon_organizer(data)
  # write your code here!
  
  # take a hash with :color, :gender, :lives and convert it to second structure
  #using gender as they are the best way to collect all names 
  
  #data = initalize_data
  all_names = bird_names(data)
  organized_data = {}
  
  all_names.each do |name|
    organized_data[name] = {}
    data.each do |key, value|
      
      inner_array = []
      
      data[key].each do |inner_key, inner_value|
       
        if data[key][inner_key].detect {|att| att == name}
          
          inner_array = inner_array.push(inner_key.to_s)
          organized_data[name][key] =  inner_array
          
        end
        
      end 
    
    end
    
  end 
  
  return organized_data
   
end

