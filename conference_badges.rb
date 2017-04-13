def badge_maker(name)
  badge = "Hello, my name is #{name}."
  badge
end

def batch_badge_creator(names_array)
  new_array = []
  names_array.each do |name|
    new_array.push(badge_maker(name))
  end
  new_array
end

def assign_rooms(names_array)
  new_array = []
  names_array.each do |name|
    index_to_room = (names_array.index(name) + 1)
    new_array.push("Hello, #{name}! You'll be assigned to room #{index_to_room}!")
  end
  new_array
end

def printer(names_array)
  batch_badge_creator(names_array).each do |badge|
    puts "#{badge}"
  end
  assign_rooms(names_array).each do |room_assignment|
    puts "#{room_assignment}"
  end
end
