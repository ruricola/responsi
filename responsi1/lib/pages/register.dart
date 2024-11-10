import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo di bagian atas halaman
            Image.asset(
              'assets/logo_responsi.png', // Pastikan logo sudah berada di folder assets
              width: 250,
              height: 150,
            ),
            const SizedBox(height: 20),

            // Teks judul "Daftar"
            const Text(
              'Daftar',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Form Input Email
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukan Email',
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Form Input Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Masukan Password',
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Form Input Konfirmasi Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Masukan kembali Password',
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Teks "Sudah memiliki akun? Masuk"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sudah memiliki akun? '),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/login'); // Menuju halaman login
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Button "Daftar"
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/login'); // Ganti dengan halaman home
                  // Logika untuk mendaftarkan akun
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
