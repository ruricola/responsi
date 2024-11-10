import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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

            // Teks judul "Masuk"
            const Text(
              'Masuk',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),

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
            const SizedBox(height: 30),

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
            const SizedBox(height: 8),

            // Teks "Belum punya akun? Daftar" dan "Lupa password?"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,
                        '/register'); // Ganti dengan halaman registrasi Anda
                  },
                  child: const Text(
                    'Belum Punya Akun?\nDaftar',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,
                        '/forgot_password'); // Ganti dengan halaman lupa password Anda
                  },
                  child: const Text(
                    'Lupa password?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Button "Masuk"
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/navigation'); // Ganti dengan halaman home
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
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
