import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mie Ayam Sam HC"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mie Ayam Ori",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Mi ayam adalah hidangan khas Indonesia yang terbuat dari mi gandum yang dibumbui dengan potongan daging ayam. '
                    'Hidangan ini banyak terpengaruh dengan teknik penyajian kuliner yang digunakan dalam hidangan Tionghoa. '
                    'Di Indonesia, mi ayam merupakan hidangan Tionghoa-Indonesia yang sangat terkenal. '
                    'Mi ayam sering dijual sebagai hidangan jalanan oleh pedagang kaki lima dengan gerobak keliling sederhana, '
                    'yang biasanya berkeliling di jalan-jalan sekitar perumahan warga. '
                    'Mi ayam juga merupakan hidangan populer yang disajikan di warung makan kecil pinggir jalan, hingga rumah makan besar.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 221, 0)),
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 251, 0)),
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 221, 0)),
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 221, 0)),
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 221, 0)),
                      SizedBox(height: 16),
                      Text('3.867 Reviews', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Prep", "10 min"),
                      _buildInfoColumn(Icons.kitchen, "Cook", "15 min"),
                      _buildInfoColumn(Icons.group, "Feeds", "1-2"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/images/mieayam.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // This method returns a Column widget with icon and text
  Widget _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
