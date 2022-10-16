import 'package:fl_components/themes/themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliderScreen'),
      ),
      body: Column(children: [
        Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) => setState(() {
                      _sliderValue = value;
                    })
                : null),
        Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            }),
        CheckboxListTile(
            value: _sliderEnable,
            title: const Text('Slider enable'),
            activeColor: AppTheme.primary,
            onChanged: ((value) => setState(() {
                  _sliderEnable = value ?? true;
                }))),
        Switch(
            value: _sliderEnable,
            activeColor: AppTheme.primary,
            onChanged: ((value) => setState(() {
                  _sliderEnable = value;
                }))),
        SwitchListTile.adaptive(
            value: _sliderEnable,
            title: const Text('Slider enable'),
            activeColor: AppTheme.primary,
            onChanged: ((value) => setState(() {
                  _sliderEnable = value;
                }))),
        Expanded(
            child: SingleChildScrollView(
          child: Image(
              fit: BoxFit.contain,
              width: _sliderValue,
              image: const NetworkImage(
                  'https://cdn.pixabay.com/photo/2022/09/25/23/28/android-7479380_960_720.png')),
        )),
      ]),
    );
  }
}
