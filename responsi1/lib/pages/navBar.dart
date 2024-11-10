import 'package:flutter/material.dart';
import 'package:responsi1/pages/login.dart';
import 'home.dart';
import 'account.dart';

class Navigationbar extends StatefulWidget {
  @override
  NavigationPageState createState() => NavigationPageState();
}

class NavigationPageState extends State<Navigationbar> {
  int _currentIndex = 0;

  // Daftar halaman yang ditampilkan berdasarkan tab yang dipilih
  final List<Widget> _pages = [
    HomePage(),
    Account(),
  ];

  void _onTabTapped(int index) {
    if (index == 2) {
      // Indeks 2 adalah untuk tombol Logout
      // Arahkan ke halaman login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Menampilkan halaman yang sesuai dengan tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
