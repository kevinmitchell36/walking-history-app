/* global Vue, $, google */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      locations: [],
      events: []

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
          zoom: 12,
          center: new google.maps.LatLng(41.875313, -87.624743),
        });

        var markers = [];
        for (var i = 0; i < this.locations.length; i++) {
          var location = this.locations[i];
          console.log("Location:", location.events.map(event => event.id));
          var textBoxOne = "";
          textBoxOne += "<div>" + location.current_name;
          textBoxOne += "<p>" + location.description + "</p>"; 
          textBoxOne += "<div><a href='/events/" + location.events[0].id + "'>" + location.events[0].name + "</a></div>";
          textBoxOne += "</div>"; 
          var pin = [textBoxOne, location.latitude, location.longitude];
          markers.push(pin);
        }

        var infowindow = new google.maps.InfoWindow({});

        var marker;

        for (i = 0; i < markers.length; i++) {
          marker = new google.maps.Marker({
            position: new google.maps.LatLng(markers[i][1], markers[i][2]),
            map: map
          });

          google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
              infowindow.setContent(markers[i][0]);
              infowindow.open(map, marker);
            };
          })(marker, i));
        }
        
      }
    }
  });
});
