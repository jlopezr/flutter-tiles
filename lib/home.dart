import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'tile.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 1),
];

List<Widget> _tiles = const <Widget>[
  const Tile(Colors.green, Icons.widgets, "Hello"),
  const Tile(Colors.lightBlue, Icons.wifi),
  const Tile(Colors.amber, Icons.panorama_wide_angle),
  const Tile(Colors.brown, Icons.map),
  const Tile(Colors.deepOrange, Icons.send),
  const Tile(Colors.indigo, Icons.airline_seat_flat),
  const Tile(Colors.red, Icons.bluetooth),
  const Tile(Colors.pink, Icons.battery_alert),
];

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: StaggeredGridView.count(
            crossAxisCount: 3,            
            staggeredTiles: _staggeredTiles,
            children: _tiles,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            padding: const EdgeInsets.all(0.0),
          )
    );
  }
}
