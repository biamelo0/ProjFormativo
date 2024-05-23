import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super (key: key);

  @override
  _Mapa3State createState() => _Mapa3State();
}

class _Mapa3State extends State <Mapa3> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('App dos maps'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),

      body: Stack(
        children: [

          FlutterMap(
            options: MapOptions(center: LatLng(-13.0861323,22.5553177), zoom: 5),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=575e01520fed4dcda658c7c326136c79',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-13.0861323,22.5553177),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.red),
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
