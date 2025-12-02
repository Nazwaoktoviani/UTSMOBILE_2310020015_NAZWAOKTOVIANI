import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/Pantai Kuta.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pantai Kuta',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text('Bali, Indonesia'),
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
                const Text('120'),
                const SizedBox(width: 16),
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                const Text('45'),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Pantai Kuta adalah salah satu destinasi wisata paling populer di Bali. '
              'Terkenal dengan pasir putih yang lembut dan ombak yang cocok untuk surfing. '
              'Selain itu, kawasan sekitar pantai juga ramai dengan restoran, bar, dan pusat belanja.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi pesan tiket
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  icon: const Icon(Icons.airplane_ticket),
                  label: const Text('Pesan Tiket'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi lihat lokasi
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  icon: const Icon(Icons.location_on),
                  label: const Text('Lihat Lokasi'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}