import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                trailing: const Icon(
                  Icons.access_alarm_outlined,
                  color: Colors.indigo,
                ),
                title: const Text('Nombre de ruta'),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const listview1Screen());

                  // Navigator.push(context, route);

                  Navigator.pushNamed(context, 'card');
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 20),
    );
  }
}
