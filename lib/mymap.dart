import 'package:flutter/material.dart';
import 'package:app_test/navbar.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MyMapScreen extends StatefulWidget {
  const MyMapScreen({super.key});

  @override
  State<MyMapScreen> createState() => _MyMapScreenState();
}

class _MyMapScreenState extends State<MyMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Map",
        ),
      ),
      drawer: Navbar(),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(0.3130927, 32.5848323),
          initialZoom: 15,
        ),
        children: [
          openStreetMapTileLayer,
          MarkerLayer(markers: [
            Marker(
                point: LatLng(0.3130927, 32.5848323),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 30,
                )),
            Marker(
                point: LatLng(0.3134927, 32.5868323),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 30,
                )),
            Marker(
                point: LatLng(0.3136927, 32.5888323),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 30,
                )),
          ]),
        ],
      ),
    );
  }

  TileLayer get openStreetMapTileLayer => TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
      );
}
