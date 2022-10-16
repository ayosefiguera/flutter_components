import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CardScreen')),
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),

            CustomCardType2(description:'Mountain' ,imageUrl: 'https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg',),
            SizedBox(height: 10),

            CustomCardType2(description:'Autumn', imageUrl: 'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg',),
            SizedBox(height: 10),

            CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg',),
            SizedBox(height: 10),
          ]),
    );
  }
}
