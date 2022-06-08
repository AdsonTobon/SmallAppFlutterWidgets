import 'package:flutter/material.dart';

// ignore: camel_case_types
class listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Pokemon',
    'Super Smas',
    'Call of duty'
  ];

  const listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List View tipo 1')),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ))
              .toList()
        ],
      ),
    );
  }
}
