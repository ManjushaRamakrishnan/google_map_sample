import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'location_service.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
//import 'package:permission_handler/permission_handler.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final locations = LocationService();
  
  @override
  Future<void> _onMapCreated(GoogleMapController controller) async{
    // TODO: implement initState
    super.initState();
    locations.getMarkers();
    
    //_hacker_news.getNewsList();
  }
  // final Map<String, Marker> _markers = {};
  // Future<void> _onMapCreated(GoogleMapController controller) async {
  //   final googleOffices = await locations.getGoogleOffices();
  //   setState(() {
  //     _markers.clear();
  //     for (final office in googleOffices.offices) {
  //       final marker = Marker(
  //         markerId: MarkerId(office.name),
  //         position: LatLng(office.lat, office.lng),
  //         infoWindow: InfoWindow(
  //           title: office.name,
  //           snippet: office.address,
  //         ),
  //       );
  //       _markers[office.name] = marker;
  //     }
  //   });
  //}

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Google Office Locations'),
            backgroundColor: Colors.green[700],
          ),
          body: Observer(
            builder: (_) => 
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: const LatLng(0, 0),
                zoom: 2,
              ),
              markers: locations.markers.values.toSet(),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
          ),
        ),
        ),
      );
}