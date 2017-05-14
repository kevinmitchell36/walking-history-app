json.id location.id
json.current_name location.current_name
json.former_name location.former_name
json.address location.address
json.latitude location.latitude
json.longitude location.longitude
json.description location.description
json.events location.events.each do |event|
  json.id event.id
  json.name event.name
  json.description_level_1 event.description_level_1
  json.description_level_2 event.description_level_2
  json.description_level_3 event.description_level_3
end
json.eventOne location.events[0].description_level_1
json.visits location.location_users.each do |location_user|
  json.user_id location_user.user_id
  json.location_id location_user.location_id
  json.visited location_user.visited
  json.discovered location_user.discovered
end
