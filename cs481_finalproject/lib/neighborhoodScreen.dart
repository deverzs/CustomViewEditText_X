import 'package:flutter/material.dart';


//Region -> Neighborhood -> Details
class NeighborhoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Neighborhood"),
      ),
      body: Center(
        child: Text(
          'Neighborhood',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }
}
