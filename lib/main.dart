import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.blue[50],
            child: Column(
              children: [
                // Profile section
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      // Profile picture
                      CircleAvatar(
                        radius: 60, // Mengurangi ukuran untuk menghemat ruang
                        backgroundColor: Colors.blue[700],
                        child: const CircleAvatar(
                          radius: 58,
                          backgroundImage: NetworkImage(
                            'https://i.pravatar.cc/300',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Name
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'I Komang Ananta Mahayana',
                          style: TextStyle(
                            fontSize: 20, // Ukuran font lebih kecil
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Website
                      const Text(
                        'Link github',
                        style: TextStyle(
                          fontSize: 14, // Ukuran font lebih kecil
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // Grid menu dengan ukuran yang lebih kecil
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 10, // Spacing yang lebih kecil
                    crossAxisSpacing: 10, // Spacing yang lebih kecil
                    childAspectRatio: 1.4, // Sedikit lebih lebar
                    children: [
                      _buildMenuCard(
                        icon: Icons.location_on,
                        label: 'Singaraja',
                        color: Colors.green,
                      ),
                      _buildMenuCard(
                        icon: Icons.store,
                        label: 'Panji',
                        color: Colors.amber,
                      ),
                      _buildMenuCard(
                        icon: Icons.music_note,
                        label: 'All Genre',
                        color: Colors.purple,
                      ),
                      _buildMenuCard(
                        icon: Icons.business,
                        label: 'Undiksha',
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.circle),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.crop_square),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Border radius lebih kecil
      ),
      elevation: 2, // Elevasi lebih kecil
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Icon(
                icon,
                size: 35, // Ukuran icon lebih kecil
                color: color,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12, // Ukuran font lebih kecil
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}