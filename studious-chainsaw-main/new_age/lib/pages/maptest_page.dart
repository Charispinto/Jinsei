import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_age/pages/choose_location.dart';
import 'package:new_age/widgets/widgets.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng _center = LatLng(37.42796133580664, -122.085749655962);
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {}

  void _onMarkerTapped(LatLng position) {
    print("Marker tapped: $position");
    print(position.latitude);
    print(position.longitude);
    nextScreenReplace(context, PickLocation(latitude: position.latitude, longitude: position.longitude));
  }

  void _onMapTapped(LatLng position) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(position.toString()),
          position: position,
          onTap: () {
            _onMarkerTapped(position);
          } ,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: _markers,
        onTap: _onMapTapped,
      ),
    );
  }
}