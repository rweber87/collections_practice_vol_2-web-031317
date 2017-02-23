# your code goes here
def begins_with_r(tools_array)
  check = true
  for tool in tools_array
    if tool[0] != 'r'
      return check = false
    end
  end
  true
end

def contain_a(elements_array)
  new_array = []

  for ele in elements_array
    if ele.include?('a')
      new_array << ele
    end
  end
  new_array
end

def first_wa(item_array)

  for item in item_array
    if item.slice(0..1) == "wa"
      return item
    end
  end
  nil
end

def remove_non_strings(array)
  string_array = []

  for ele in array
    if ele.class == String
      string_array << ele
    end
  end
  string_array
end

def count_elements(array_of_hashes)
  output_array = []
  counter_hash = {}

  for hash in array_of_hashes
    counter_hash.include?(hash[:name]) ? counter_hash[hash[:name]] += 1 : counter_hash[hash[:name]] = 1
  end

  counter_hash.each {|name, count|
      output_array << {:name => name, :count => count}
  }

  output_array
end

def merge_data(first_name_data, rest_of_data)
  output_array = []
  idx = 0

  while idx < first_name_data.length do
    new_hash = {}
    first_name_data[idx].each {|name_key, name_value|
      new_hash[name_key] = name_value
      rest_of_data[0][name_value].each {|key, value|
        new_hash[key] = value
      }
      output_array << new_hash
    }
    idx += 1
  end
  output_array
end

def find_cool(cool)
  output_array = []
  idx = 0
  while idx < cool.length
    if cool[idx][:temperature] == "cool"
      output_array << cool[idx]
    end
    idx += 1
  end
  output_array
end

def organize_schools(schools)
  output_hash = {}

  schools.each do |key, value|
      if output_hash.include?(value[:location])
        output_hash[value[:location]] << key
      else
        output_hash[value[:location]] = [key]
      end
  end
  output_hash
end
