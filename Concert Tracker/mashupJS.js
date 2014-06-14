//mashup
var map;
var geocoder;
var poly;
var lastfm;
var markers;
var infoWindow = null;


//sets up page on load
function initialize() {
	var mapOptions = {
		center: new google.maps.LatLng(0,0),
		zoom: 3
	};
	var polyOptions = {
		geodesic: false,
		strokeColor: '#FF0000',
		strokeOpacity: 1.0,
		strokeWeight: 3
	};
	infoWindow = new google.maps.InfoWindow({
		content: "test"
	});
	markers = [];
	//create map and poly objects with their options defined above
	map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
	poly = new google.maps.Polyline(polyOptions);
	//poly will be overlayed on map
	poly.setMap(map);
	//create geocoder object and last.fm object
	geocoder = new google.maps.Geocoder();
	lastfm = new LastFM({
		apiKey    : 'aad050c714b186023c5c3204e34c6647',
		apiSecret : 'b71f6a358188adee9947c8d129bb1621',
	});
}


function doStuff() {
	//clears map if already populated
	initialize();
	//find artist specified
    var artist = document.getElementById("artist").value;
	//get artists upcoming events
	lastfm.artist.getEvents({artist: artist}, {success: function(data){
		//if they have events upcoming
		if (data.events.event){
			var eventArray = data.events.event;
			var length = eventArray.length;
			if (length===0){
				alert("No upcoming shows for this artist.");
			}else{
				//loop through all events
				for (var i = 0; i<length; i++){
					var address=eventArray[i].venue.location.city;
					var title = eventArray[i].title;
					//geocode city name to lat and lng values
					geocoder.geocode( { 'address': address}, function(results, status) {
						if (status == google.maps.GeocoderStatus.OK) {
							//create latlng object and push to poly's path variable which will add them in order of event date
							var latlng = new google.maps.LatLng(results[0].geometry.location.lat(),results[0].geometry.location.lng());
							var path = poly.getPath();
							path.push(latlng);
							var htmlString = '<div id="content">'+
											'<div id="siteNotice">'+
											'</div>'+
											'<h1 id="firstHeading" class="firstHeading">'+title+'</h1>'+
											'<div id="bodyContent">'+
											'</div>'+
											'</div>';

							//create marker with info about that concert	
							var marker = new google.maps.Marker({
								position: latlng,
								title: 'Event #'+path.getLength(),
								map: map
							});
							marker.html = htmlString;
							markers.push(marker);
							alert(markers.length);
						} else {
							alert("Geocoding for "+address+" was not successful for the following reason: " + status);
						}
					});
				}
				alert(markers.length);
				for(var i=0; i<markers.length; i++){
					var marker = markers[i];
					alert("test");
					google.maps.event.addListener(marker, 'click', function(){
						infoWindow.setContent(this.html);
						infoWindow.open(map, this);
					});
				}
			}
		}else{
			alert("No events for the specified artist. Check for correct spelling.");
		}
	}, error: function(code, message){
		alert("No such artist exists in our records. Check for correct spelling.");
	}});
	
}