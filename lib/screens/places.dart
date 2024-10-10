import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places/providers/user_places.dart';
import 'package:places/screens/add_places.dart';
import 'package:places/widgets/places_list.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final userPlaces = ref.watch(userPlacesProfider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your PLaces'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const AddPlacesScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: PlacesList(
          places: userPlaces,
        ));
  }
}
