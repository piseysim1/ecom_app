import 'package:e_comapp/contant/color.dart';
import 'package:flutter/material.dart';

class Slidecard extends StatefulWidget {
  const Slidecard({super.key});

  @override
  State<Slidecard> createState() => _SlidecardState();
}

class _SlidecardState extends State<Slidecard> {
  double _currentValue = 50; // Initial slider value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ecommer app')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Value: ${_currentValue.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Slider(
              value: _currentValue,
              min: 0,
              max: 100,
              divisions: 100, // Optional: creates discrete steps
              label: _currentValue.toStringAsFixed(1),
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              onChanged: (double value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
