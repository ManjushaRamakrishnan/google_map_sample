import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapContainer extends StatelessWidget{

  const MapContainer(this.markers);

  final Map<String, Marker> markers;
  //Future<void> onMapCreated() {};

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GoogleMap(
            //onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: const LatLng(0, 0),
              zoom: 2,
            ),
            markers: markers.values.toSet(),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
        ),
      ],
    );
  }
}