json.array! @events.each do |event|
  json.partial! "events.json.jbuilder", event: event
end