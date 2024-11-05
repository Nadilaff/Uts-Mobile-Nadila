import 'package:flutter/material.dart';
import 'home.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 168, 168, 1),
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Gambar
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('img/profile.jpg'),
              ),
              const SizedBox(height: 20),

              // Nama
              const Text(
                'Bobby Kertanegara',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),

              // Pekerjaan
              Text(
                'Programming',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 40),

              // Kontak
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.phone, color: Color.fromRGBO(2, 168, 168, 1)),
                      SizedBox(width: 10),
                      Text(
                        '+62 851 2309 8456',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.date_range,
                          color: Color.fromRGBO(2, 168, 168, 1)),
                      SizedBox(width: 10),
                      Text(
                        'Jakarta, 20 November 2003',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.email, color: Color.fromRGBO(2, 168, 168, 1)),
                      SizedBox(width: 10),
                      Text(
                        'bobby@gmail.com',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Alamat
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.home, color: Color.fromRGBO(2, 168, 168, 1)),
                      SizedBox(width: 10),
                      Text(
                        'Jl. Pahlawan No. 01 Jaksel',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: const Color.fromARGB(255, 59, 214, 172),
        unselectedItemColor: Colors.grey,
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
          } else if (index == 1) {}
        },
      ),
    );
  }
}
