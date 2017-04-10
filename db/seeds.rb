User.create([
  {first_name: "Rando", last_name: "Used", email: "rando@email.com", password_digest: "password", username: "rando21"},
  {first_name: "Randette", last_name: "User", email: "randette@email.com", password_digest: "password", username: "randette22"},
  {first_name: "Randini", last_name: "UsedUp", email: "randini@email.com", password_digest: "password", username: "randini23"},
  {first_name: "Peter", last_name: "Jang", email: "peter@email.com", password_digest: "password", username: "pete"}
])

Location.create([
  {current_name: "Congress Plaza Hotel", former_name: "Auditorium Annex", address: "520 S Michigan Ave, Chicago, IL" , latitude: 41.875313,  longitude: -87.624743, description:"Built in 1893 by Clinton Warren..."},
  {current_name: "Oriental Theatre", former_name:"Iriquois Theatre", address: "24 W Randolph St, Chicago, IL" , latitude: 41.885021,  longitude: -87.62912, description:"Hastily Built in 1903..."},
  {current_name: "Pinecrest Apartments", former_name:"Apartments", address: "2122 N Clark St, Chicago, IL" , latitude: 41.954194,  longitude: -87.647597, description:"Typical Chicago apartment building"},
  {current_name: "Parking lot for apartment building", former_name: "SMC Cartidge Company", address: "3941 North Pine Grove Avenue, Chicago, IL", latitude: 41.920902, longitude: -87.637811, description:"Parking lot for apartment building"},
  {current_name: "Upper/Lower Wacker", former_name: "Chicago River between", address: "Chicago River across from Reid-Murdoch Center", latitude: 41.887055, longitude: -87.635268, description: "Banks of the Chicago River"}
  
  ])  

Event.create([
  {date:"Febuary 14", time_of_day: "morning", name: "St Valentine's Day Massacre", description_level_1: "7 dudes got shot",  description_level_2: "they were all part of the NSI",  description_level_3: "did the cops do it?", location_id: 4, category_id: 1, year: "1929"},
  {date:"December 30", time_of_day: "afternoon", name: "Iriquois Theatre Fire", description_level_1: "602 people burned",  description_level_2: "they were seeing Mr. Blue Beard",  description_level_3: "was the theatre built too fast?", location_id: 2, category_id: 2, year: "1903"},
  {date:"December 10", time_of_day: "afternoon",  description_level_1: "she got a knife to the throat",  description_level_2: "also a GSW to the head",  description_level_3: "did he really do it?", location_id: 3, category_id: 3, year: "1945"},
  {date:"July 24", time_of_day: "morning", name: "Eastland Disaster",  description_level_1: "841 people drowned",  description_level_2: "they were on a company picnic",  description_level_3: "we almost didn't have Da' Bears", location_id: 5, category_id: 2, year: "1915"},
  {date:"1893", time_of_day: "all-day", name: "Congress Plaza Hotel", description_level_1: "Clinton Warren worked for Burnham and Root",  description_level_2: "The hotel was built for the World's Fair",  description_level_3: "It cost $150 a night...in 1893!", location_id: 1, category_id: 4}
  ])

Category.create([
  {category: "Gangsters"},
  {category: "Disasters"},
  {category: "True Crime"},
  {category: "Columbian Exposition"},
  
  ])  


