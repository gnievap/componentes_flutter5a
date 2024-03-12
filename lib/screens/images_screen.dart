import 'package:flutter/material.dart';
import 'package:practica3_5a24/screens/inputs.dart';
import 'package:practica3_5a24/theme/app_theme.dart';
import 'package:practica3_5a24/screens/home_screen.dart';
import 'package:practica3_5a24/screens/infinite_list.dart';
import 'package:practica3_5a24/screens/notifications.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imágenes',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        backgroundColor: AppTheme.primaryColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.primaryColor,
            icon: Icon(
              Icons.home,
              color: AppTheme.backColor,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'Entradas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          ),
        ],
      ),
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const Image(
              image: AssetImage('assets/img/huskies.jpg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('3 huskies sonrientes'),
          ),
        ],
      ),
    );
  }

  Widget imageWeb() {
    return Center(
      child: Image.network(
          'data:image/jpeg;base64,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'),
    );
  }

  openScreen(BuildContext context, int index) {
    // valor por default de ruta
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteList());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const Notifications());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const Inputs());
        break;
    }
    setState(() {
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }
}
