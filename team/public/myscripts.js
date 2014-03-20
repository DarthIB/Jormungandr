var lon = "0.1275"
var lat = "51.5072"

function show(shown, hidden, hidden2, hidden3) 
{
  document.getElementById(shown).style.display='block';
  document.getElementById(hidden).style.display='none';
  document.getElementById(hidden2).style.display='none';
  document.getElementById(hidden3).style.display='none';

  return false;
}


var map;
function init() {

	//Maps Center 

	var lonlat = new OpenLayers.LonLat(lon, lat);
	lonlat.transform(
		new OpenLayers.Projection("EPSG:4326"), // transform from WGS 1984
		new OpenLayers.Projection("EPSG:900913") // to Spherical Mercator Projection
	);

    map = new OpenLayers.Map("basicMap");

	// Create overlays

	// OSM layer
    var mapnik = new OpenLayers.Layer.OSM();
	// stations layer
	var stations = new OpenLayers.Layer.Vector.OWMStations("Stations");
	// weather layer
	var city = new OpenLayers.Layer.Vector.OWMWeather("Weather");

	//connect layers to map
	map.addLayers([mapnik, stations, city]);

	//Add Layers swither
	map.addControl(new OpenLayers.Control.LayerSwitcher());       	

	map.setCenter( lonlat, 9);

	// Add popups 
	selectControl = new OpenLayers.Control.SelectFeature([city,stations]);
	map.addControl(selectControl);
	selectControl.activate(); 


}
