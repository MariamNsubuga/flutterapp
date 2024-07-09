import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart'; //used for retrieving the device's location.

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Position? _currentPosition; // Stores the current position obtained from the device's location services.
  final Set<Marker> _markers = {};  //set of markers to be displayed on the map.
  bool _isLoading = true;  // Indicates whether the app is currently loading data 
  String _errorMessage = ''; //Stores any error message encountered during the process of obtaining location or adding markers

  @override
  void initState() {
    super.initState();
    _getCurrentLocation(); //retrieve the device's current position.

  }

  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Location services are disabled.';
        });
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          setState(() {
            _isLoading = false;
            _errorMessage = 'Location permissions are denied';
          });
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Location permissions are permanently denied';
        });
        return;
      }

      _currentPosition = await Geolocator.getCurrentPosition();
      if (_currentPosition != null) {
        _addMarkers();
      } else {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Failed to get current location.';
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Failed to get location: $e';
      });
    }
  }

  void _addMarkers() {
    if (_currentPosition == null) return;

    List<Map<String, dynamic>> hospitals = [
      {
        'name': 'A',
        'latitude': _currentPosition!.latitude + 0.01,
        'longitude': _currentPosition!.longitude + 0.01,
      },
      {
        'name': 'B',
        'latitude': _currentPosition!.latitude - 0.01,
        'longitude': _currentPosition!.longitude - 0.01,
      },
      {
        'name': 'C',
        'latitude': _currentPosition!.latitude + 0.02,
        'longitude': _currentPosition!.longitude + 0.02,
      },
       {
        'name': 'MTA',
        'latitude':  0.3130927,
        'longitude':  32.5848323,

      },
    ];

    setState(() {
      _markers.clear();
      for (var hospital in hospitals) {
        _markers.add(
          Marker(
            markerId: MarkerId(hospital['name']!),
            position: LatLng(hospital['latitude']!, hospital['longitude']!),
            infoWindow: InfoWindow(title: hospital['name']!),
          ),
        );
      }
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _currentPosition != null
                      ? CameraPosition(
                          target: LatLng(
                              _currentPosition!.latitude, _currentPosition!.longitude),
                          zoom: 14.0,
                        )
                      : const CameraPosition(
                          target: LatLng(0.0, 0.0),
                          zoom: 14.0,
                        ),
                  markers: _markers,
                ),
    );
  }
}
