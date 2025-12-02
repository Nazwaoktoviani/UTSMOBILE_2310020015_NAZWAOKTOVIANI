import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  final List<Map<String, String>> wisataList = const [
    {
      'title': 'Pantai Kuta',
      'location': 'Bali',
      'image': 'assets/images/Pantai Kuta.jpg',
    },
    {
      'title': 'Merbabu',
      'location': 'Jawa Timur',
      'image': 'assets/Images/Merbabu.jpg',
    },
    {
      'title': 'Danau Toba',
      'location': 'Sumatera Utara',
      'image': 'assets/images/Toba.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore Wisata')),
      body: ListView.builder(
        itemCount: wisataList.length,
        itemBuilder: (context, index) {
          final wisata = wisataList[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                wisata['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(wisata['title']!),
            subtitle: Text(wisata['location']!),
            trailing: const Icon(Icons.comment),
            onTap: () => Navigator.pushNamed(context, '/detail'),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Wisata'),
        ],
      ),
    );
  }
}