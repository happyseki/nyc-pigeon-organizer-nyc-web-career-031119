def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do|attribute, value_hash|
    value_hash.each do|key, name_array|
    name_array.each do|name|
    if  !pigeon_list.keys.include?(name)
    pigeon_list[name]={}
    end
    if !pigeon_list[name].keys.include?(attribute)
    pigeon_list[name][attribute] = []
    end
    if ! pigeon_list[name][attribute].include?(key)
    pigeon_list[name][attribute] << key.to_s
    end 
    end
   end
  end 
 pigeon_list
end