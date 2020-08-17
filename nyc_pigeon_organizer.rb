require 'pry'
def nyc_pigeon_organizer(data)
  final_dic = data.each_with_object({}) do |(key, value), final_ary|
    value.each do |inner_key , names|
      names.each do |name|
        if !final_ary[name]
          final_ary[name] = {}
        end
        if !final_ary[name][key]
          !final_ary[name][key] = []
        end
        final_ary[name][key].push(inner_key.to_s)
      end
    end
  end
  final_dic
end