json.array! @locations.each do |location|
  json.partial! 'locations.json.jbuilder', location: location
end

# json.array! @location_users.each do |location_user|
#   json.partial! 'location_user.json.jbuilder', location_user: location_user
# end