json.array! @locations.each do |location|
  json.partial! 'locations.json.jbuilder', location: location
end