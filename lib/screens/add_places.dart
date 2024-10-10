
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places/providers/user_places.dart';

class AddPlacesScreen extends ConsumerStatefulWidget{

    const AddPlacesScreen ({super.key});

    @override
  ConsumerState<AddPlacesScreen> createState() {
   return _AddPlacesScreenState();
  }
}

class _AddPlacesScreenState extends ConsumerState<AddPlacesScreen> {
  
   final _titleController = TextEditingController();

  
  void _savePlace(){
    final enteredText = _titleController.text;

    if(enteredText.isEmpty){
      return;
    }
    ref.read(userPlacesProfider.notifier).addPlace(enteredText);

    Navigator.of(context).pop();
  }
  
  
   @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
 

    @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar:  AppBar(
            title: const Text('Add New Places'),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(12),
        child:  Column(
            children: [
                TextField(
                    decoration: const InputDecoration(labelText: 'Title'),
                    controller: _titleController,
                    style: TextStyle(
                      color:   Theme.of(context).colorScheme.onSurface,
                ),
                    ),
                    //Image Input 
                const SizedBox(height: 16,) , 
                ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text('Add Place'),
                    onPressed: _savePlace, 
                    ),
            ],
        ),
     ),
     );
  }
}