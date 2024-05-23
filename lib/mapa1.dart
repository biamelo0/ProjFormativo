import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super (key: key);

  @override
  _Mapa1State createState() => _Mapa1State();
}

class _Mapa1State extends State <Mapa1> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('App dos maps'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-3.10719, -60.0261), zoom: 15),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng( -3.10719, -60.0261),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.brown),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
