import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(51.0764789, 17.0330163),
            zoom: 14,
          ),
          markers: _buildMarkers(),
        ),
      ),
    );
  }

  Set<Marker> _buildMarkers() {
    Set<Marker> markers = {};

    markers.add(Marker(
      markerId: MarkerId('1'),
      position: LatLng(51.0764789, 17.0360163),
      infoWindow: InfoWindow(title: 'normal marker (1)')
    ));

    markers.add(Marker(
        markerId: MarkerId('2'),
        position: LatLng(51.0764789, 17.0330163),
        zIndex: 2,
        infoWindow: InfoWindow(title: 'z-index marker (2)')
    ));

    markers.add(Marker(
        markerId: MarkerId('3'),
        position: LatLng(51.0764789, 17.0300163),
        infoWindow: InfoWindow(title: 'normal marker (3)')
    ));

    markers.add(Marker(
        markerId: MarkerId('4'),
        position: LatLng(51.0664789, 17.0330163),
        infoWindow: InfoWindow(title: 'normal marker (4)')
    ));

    return markers;
  }
}
