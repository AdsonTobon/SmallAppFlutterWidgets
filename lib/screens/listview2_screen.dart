import 'package:flutter/material.dart';

// ignore: camel_case_types
class listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Pokemon',
    'Super Smas',
    'Call of duty'
  ];

  const listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('List View tipo 2')),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.indigo),
                  onTap: () {
                    final game = options[i];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
