
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places/models/place.dart';

class UserPlacesNotifier  extends StateNotifier<List<Place>>{
  UserPlacesNotifier () : super(const []);

  void addPlace (String title) {
    final newPlace = Place(title: title);
    state = [newPlace , ...state];
  }
}


final userPlacesProfider  = StateNotifierProvider<UserPlacesNotifier , List<Place>>(
  (ref) => UserPlacesNotifier(),
);