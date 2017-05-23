  /* global Vue, $, google */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      locations: [],
      

      

    },
    mounted: function() {
      $.get("api/v1/locations", function(responseData) {
        this.locations = responseData;
        this.drawMap();
      }.bind(this));
    },
   
    
    methods: {
      drawMap: function() {
        // function initMap() {
        

        var map = new google.maps.Map(document.getElementById('map'), {
          // zoom: 18,
          // center: new google.maps.LatLng(41.75313, -87.624743),
        });


        var pinImageRed = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/F71B09/");
        var pinImageGreen = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/009900/");
        var marker;
        var pinImage;
        var markers = [];
        for (var i = 0; i < this.locations.length; i++) {
          var location = this.locations[i];
          var visited = location.visits[0].visited;
          var discovered = location.visits[0].discovered;
          if (visited === false && discovered === true) {
            pinImage = pinImageGreen;
            console.log("RED");
          } else {
            pinImage = pinImageRed;
            console.log("GREEN");
          }
          console.log("Location:", location.events.map(event => event.id));
          var textBoxOne = "";
          textBoxOne += "<div>" + location.current_name;
          textBoxOne += "<br>" + "</br>";
          textBoxOne += "<p>" + location.description + "</p>"; 
          textBoxOne += "<div>";

          location.events.forEach(function(event) {
            var textBoxEvent = "<li id=" + "textList" + ">" + "<a href='/events/" + event.id + "'>" + event.name + "</a></li>";
            textBoxOne += textBoxEvent;
          });


          textBoxOne += "</div>"; 


          var pin = [textBoxOne, location.latitude, location.longitude];
          pin.icon = pinImage;
          markers.push(pin);
        }

        // var infowindow = new google.maps.InfoWindow({});
        var bounds = new google.maps.LatLngBounds();
        var infowindow = new google.maps.InfoWindow(); 
                
        for (i = 0; i < markers.length; i++) {
          marker = new google.maps.Marker({
            position: new google.maps.LatLng(markers[i][1], markers[i][2]),
            map: map,
            icon: markers[i].icon
          });
         
          bounds.extend(marker.position);

          google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
              infowindow.setContent(markers[i][0]);
              infowindow.open(map, marker);
            };
          })(marker, i));

          // map.fitBounds(bounds);

          map.fitBounds(bounds);
          var listener = google.maps.event.addListener(map, "idle", function() { 
            if (map.getZoom() > 17) map.setZoom(17); 
            google.maps.event.removeListener(listener); 
          });
        }
        
      }
    }
  });
});
