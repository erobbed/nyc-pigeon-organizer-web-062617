require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  #pigeon_names = []
  #pigeon_attributes = data.keys
  #colors = data.values[0].keys
  #genders = data.values[1].keys
  #locations = data.values[2].keys

  data.each do |attributes, attribute_data|
    attribute_data.each do |key, value|
      value.each do |pigeon|
        if pigeon_list.keys.include?(pigeon)
          if pigeon_list[pigeon].has_key?(attributes)
            pigeon_list[pigeon][attributes] << key.to_s
          else
            pigeon_list[pigeon][attributes] = [key.to_s]
          end
        else
          pigeon_list[pigeon] = {attributes => [key.to_s]}
        end
      end
    end
  end
  #binding.pry
  pigeon_list
end
