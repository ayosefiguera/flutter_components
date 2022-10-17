import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      const ListTile(
        leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
        title: Text('Tittle'),
        subtitle: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ex mauris,'),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
              child: const Text('ok'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
              child: const Text('Cancel'),
            ),
          ],
        ),
      )
    ]));
  }
}
