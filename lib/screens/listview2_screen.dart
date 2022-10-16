import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

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
        title: const Text('Books 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          leading: const Icon(Icons.event_note),
          trailing: const Icon(Icons.arrow_right),
          onTap: () {
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
