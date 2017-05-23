# User.create([
#   {first_name: "Rando", last_name: "Used", email: "rando@email.com", password: "password", username: "rando21"},
#   {first_name: "Randette", last_name: "User", email: "randette@email.com", password: "password", username: "randette22"},
#   {first_name: "Randini", last_name: "UsedUp", email: "randini@email.com", password: "password", username: "randini23"},
#   {first_name: "Peter", last_name: "Jang", email: "peter@email.com", password: "password", username: "pete"}
# ])

# Location.create([
#   {current_name: "Congress Plaza Hotel", former_name: "Auditorium Annex", address: "520 S Michigan Ave, Chicago, IL" , latitude: 41.875313,  longitude: -87.624743, description:"Built in 1893 by Clinton Warren..."},
#   {current_name: "Oriental Theatre", former_name:"Iriquois Theatre", address: "24 W Randolph St, Chicago, IL" , latitude: 41.885021,  longitude: -87.62912, description:"Hastily Built in 1903..."},
#   {current_name: "Pinecrest Apartments", former_name:"Apartments", address: "2122 N Clark St, Chicago, IL" , latitude: 41.954194,  longitude: -87.647597, description:"Typical Chicago apartment building"},
#   {current_name: "Parking lot for apartment building", former_name: "SMC Cartidge Company", address: "3941 North Pine Grove Avenue, Chicago, IL", latitude: 41.920902, longitude: -87.637811, description:"Parking lot for apartment building"},
#   {current_name: "Upper/Lower Wacker", former_name: "Chicago River between", address: "Chicago River across from Reid-Murdoch Center", latitude: 41.887055, longitude: -87.635268, description: "Banks of the Chicago River"}
  
#   ])  

# Event.create([
#   {date:"Febuary 14", time_of_day: "morning", name: "St Valentine's Day Massacre", description_level_1: "7 dudes got shot",  description_level_2: "they were all part of the NSI",  description_level_3: "did the cops do it?", location_id: 4, category_id: 1, year: "1929"},
#   {date:"December 30", time_of_day: "afternoon", name: "Iriquois Theatre Fire", description_level_1: "602 people burned",  description_level_2: "they were seeing Mr. Blue Beard",  description_level_3: "was the theatre built too fast?", location_id: 2, category_id: 2, year: "1903"},
#   {date:"December 10", time_of_day: "afternoon",  description_level_1: "she got a knife to the throat",  description_level_2: "also a GSW to the head",  description_level_3: "did he really do it?", location_id: 3, category_id: 3, year: "1945"},
#   {date:"July 24", time_of_day: "morning", name: "Eastland Disaster",  description_level_1: "841 people drowned",  description_level_2: "they were on a company picnic",  description_level_3: "we almost didn't have Da' Bears", location_id: 5, category_id: 2, year: "1915"},
#   {date:"1893", time_of_day: "all-day", name: "Congress Plaza Hotel", description_level_1: "Clinton Warren worked for Burnham and Root",  description_level_2: "The hotel was built for the World's Fair",  description_level_3: "It cost $150 a night...in 1893!", location_id: 1, category_id: 4}
#   ])

# Category.create([
#   {category: "Gangsters"},
#   {category: "Disasters"},
#   {category: "True Crime"},
#   {category: "Columbian Exposition"},
  
#   ])  

# LocationUser.create([
#   {user_id: 1, location_id: 1, visited: true},
#   {user_id: 1, location_id: 2, visited: true},
#   {user_id: 1, location_id: 3, visited: false},
#   {user_id: 1, location_id: 4, visited: false}
#   ])
  
# Event.create([
#   {date:"January 2, 1972", time_of_day: "afternoon", name: "Gacy's First victim", description_level_1: "Timothy McCoy was on a trip", description_level_2: "Gacy took him back to his house", description_level_3: "censored", location_id: 1, category_id: 3, year: "1972"},
#   {date: "October 8, 1871", time_of_day: "evening", name: "The Great Fire", description_level_1: "Mrs. O'leary's cow kicked...", description_level_2: "Mrs. O'Leary was Irish", description_level_3: "What really happened?", location_id:  6, category_id: 2},
#   {date: "Feb 1890", time_of_day: "afternoon", name: "Awaiting the news", description_level_1: "Burnham and Root are waiting", description_level_2: "It was rumored they would build...", description_level_3: "John Root's floating grillage", location_id: 7, category_id: 2},
#   {date: "1924", time_of_day: "afternoon", name: "The Chicago handshake", description_level_1: "Dean O'Bannion was arranging", description_level_2: "The flowers were for Mike Merlo", description_level_3: "This kicked off the beer wars", location_id: 10, category_id: 1}
# ])

# Location.create([
#   {current_name: "Fire Academy", former_name: "Mrs. O'Leary's Barn", address: "147 De Koven St.", latitude: 41.869468, longitude: -87.641886, description: "Used to be a barn..."},
#   {current_name: "The Rookery", former_name: "The Rookery", address: "209 S. Lasalle St.", latitude: 41.87904, longitude: -87.631881, description: "Built in..."},
#   {current_name: "Parking lot for Holy Name", former_name: "Schofield's Flowers", latitude: 41.896232, longitude: -87.628314, description: "An ordinary flower shop?"}
#   ])


# LocationUser.create([
#   {user_id: 6, location_id: 5, visited: true},
#   {user_id: 6, location_id: 6, visited: true},
#   {user_id: 6, location_id: 7, visited: false},
#   {user_id: 6, location_id: 10, visited: false}
#   ])

# 8.times do
#   Image.create([
#     {url: "", caption: "", event_id: 2 }
#     ])
# end

# 7.times do
#   LocationUser.create([
#     {user_id: 6, location_id: 2, visited: false, discovered: false}
#     ])
# end


#   Location.create([
#     {current_name: "Tommy Gun’s Garage", former_name: "Colisimo's Cafe", address: "2114 S Wabash Ave, Chicago, IL 60616", latitude: 41.853617 , longitude: -87.628101, description: "If you are up for an excellent prix fixe meal with a gangster show to boot, Tommy Gun’s Garage is the place for you.  How ever in [1920] one gun shot would change everything…"},
#     {current_name: "Osaka Gardens", former_name: "Wooded Isle", address: "N/A", latitude: 41.786172, longitude: -87.584984, description: "Head out onto the island to view a beautiful Japanese garden that has been recently restored.  Believe it or not this island was once the envy of the world over."},
#     {current_name: "Washington Square Park", former_name: "Bughouse Square", address: "N/A", latitude: 41.899276, longitude: -87.632773, description: ""},
#     {current_name: "Victory Gardens/ Biograph Theater", former_name: "Biograph Theater", address: "2433 N Lincoln Ave, Chicago, IL 60614", latitude: 41.926346, longitude: -87.651976, description: "Built in 1914, the Biograph Theater has changed very little over the years.  The marquee that you’ll see look almost identical to the one in 1914.  Click below to learn about a deadly show down that happened just outside the front doors."},
#     {current_name: "Battle of Fort Dearborn Park", former_name: "Banks of Lake Michigan", address: "N/A", latitude: 41.857915, longitude: -87.621520, description: "Blink and you’ll miss it!  This postage stamp size park was the sight of a pitched battle during the early days of Chicago’s history.
# "},
#     ])

# Event.create([
#   {date: "May 29, 1924", time_of_day: "Morning", name: "The Trial of Leopold and Loeb", description_level_1:"Both boys wanted to commit the perfect crime", description_level_2: "Their target: young Bobby Franks" , description_level_3: "Almost executed", location_id: 9, category_id: 3, year: "1924"},
#   {date: "April 3, 1924", time_of_day: "Morning" , name: "The Jazz Murders", description_level_1: "Both Belva and Beulah.." , description_level_2: "They both killed their lovers", description_level_3: "Both were acquitted ", location_id: 9, category_id: 3, year: "1924" },
#   {date: "October 11, 1926", time_of_day: "Afternoon" , name: "The Death of Hymie Weiss" , description_level_1: "Hymie Weiss was returning home from" , description_level_2: "He was ambushed by Anselmi, Scalise, and Yale" , description_level_3: "Right on the step of the church" , location_id: 8, category_id: 1, year: "1926"},
#   {date: "May 11, 1920", time_of_day: "Afternoon", name: "A bid for power" , description_level_1: "Jim Colosimo was crime lord of the Levee" , description_level_2: "He was uninterested in Prohibition" , description_level_3: "He was shot on the orders of Johnny Torrio" , location_id: 11, category_id: 1, year: "1920"},
#   {date: "May 1, 1893", time_of_day: "Half of the year" , name: "The Columbian Exposition", description_level_1: "Amazing", description_level_2: "The buildings were all painted white" , description_level_3: "The wars of the current" , location_id: 12, category_id: 4, year: "1893"},
#   {date: "September 4 1842", time_of_day: "Morning", name: "The Great Debates" , description_level_1: "People debated politics" , description_level_2: "It was intense" , description_level_3: "They stopped debating" , location_id: 13, category_id: 1, year: "1842" },
#   {date: "July 22, 1934", time_of_day: "Evening", name: "Dillinger meets his end" , description_level_1: "He was seeing a show" , description_level_2: "He was betrayed by Anna Sage" , description_level_3: "Did he actually die?", location_id: 14, category_id: 1, year: "1934"},
#   {date: "August 15, 1812" , time_of_day: "Morning", name: "The Fort Dearborn Massacre", description_level_1: "They were evacuating the fort" , description_level_2: "About a mile into their trek", description_level_3: "80 men, women, and children", location_id: 15, category_id: 2, year: "1812"}
#   ])
  
    

  

