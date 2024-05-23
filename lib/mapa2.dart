import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super (key: key);

  @override
  _Mapa2State createState() => _Mapa2State();
}

class _Mapa2State extends State <Mapa2> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('App dos maps'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(47.6902711,63.2870884), zoom: 5),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=575e01520fed4dcda658c7c326136c79',
                userAgentPackageName: 'com.example.app',
              ),

              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(47.6902711,63.2870884),
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
