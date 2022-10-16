import 'package:flutter/material.dart';

class CargoManager extends StatelessWidget {
  const CargoManager({super.key});

  final options = const [
    'The Way of Kings',
    'Words of Radiance',
    'Edgedancer',
    'Oathbringer',
    'Dawnshard',
    'Rhythm of War'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: ListView(
        children: [
          ...options
              .map((donwload) => ListTile(
                    title: Text(donwload),
                    leading: const Icon(Icons.event_note),
                    trailing: const Icon(Icons.arrow_right),
                  ))
              .toList()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
