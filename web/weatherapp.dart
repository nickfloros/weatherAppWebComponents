import 'dart:html';
import 'package:js/js.dart' as js;

import 'package:web_ui/web_ui.dart';
import 'package:google_maps/google_maps.dart' ;
import 'package:weatherApp/weather_station_client.dart';

// initial value for click-counter
int startingCount = 5;

/**
 * Learn about the Web UI package by visiting
 * http://www.dartlang.org/articles/dart-web-components/.
 */

WeatherStations weatherStations;

void main() {
  // Enable this to use Shadow DOM in the browser.
  //useShadowDom = true;
  
  weatherStations = new WeatherStations.getInstance();
  
  final mapOptions = new MapOptions()
  ..zoom = 14
  ..center = new LatLng(50.724321, -1.741471)
  ..mapTypeId = MapTypeId.ROADMAP
  
  ;
  var lymington = new LatLng(50.740067, -1.506770);
  var highCliff=new LatLng(50.724321, -1.741471);
  final map = new GMap(query("#map_canvas"), mapOptions);
   var bound = new LatLngBounds();
}
