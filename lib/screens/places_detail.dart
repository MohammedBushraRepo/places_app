

import 'package:flutter/material.dart';
import 'package:places/models/place.dart';

class PlacesDetailScreen extends StatelessWidget {
  const PlacesDetailScreen ({super.key , required this.place});

  final Place place ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Center(
        child: Text(
          place.title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}