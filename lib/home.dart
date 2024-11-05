import 'package:flutter/material.dart';
import 'profil.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 168, 168, 1),
        elevation: 0,
        title: const Text(
          "Catatan Kegiatan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // List tugas
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                TaskCard(
                  icon: Icons.wb_sunny,
                  title: "Cuaca",
                  subtitle: "Perkiraan cuaca",
                ),
                SizedBox(height: 16),
                TaskCard(
                  icon: Icons.calendar_today,
                  title: "Agenda",
                  subtitle: "Rencana kegiatan",
                ),
                SizedBox(height: 16),
                TaskCard(
                  icon: Icons.sports,
                  title: "Olahraga",
                  subtitle: "Aktivitas yang dilakukan",
                ),
                SizedBox(height: 16),
                TaskCard(
                  icon: Icons.work,
                  title: "Pekerjaan",
                  subtitle: "Tugas yang harus dilakukan",
                ),
                SizedBox(height: 16),
                TaskCard(
                  icon: Icons.shopping_cart,
                  title: "Belanja",
                  subtitle: "Kebutuhan dan pengeluaran",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color.fromARGB(255, 59, 214, 172),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HalamanHome()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanProfil()),
            );
          }
        },
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const TaskCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromRGBO(2, 168, 168, 1),
          size: 40,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
