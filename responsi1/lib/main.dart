import 'package:responsi1/pages/account.dart';
import 'package:responsi1/state_util.dart';
import 'package:responsi1/core.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/forgotPass.dart';
import 'pages/home.dart';
import 'pages/navBar.dart';
import 'pages/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Responsi Mobile Lanjut',
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.navigatorKey,
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: {
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/forgot_password': (context) => const ForgotPass(),
          '/navigation': (context) => Navigationbar(),
          '/home': (context) => const HomePage(),
          '/account': (context) => const Account(),
          '/logout': (context) => const LoginPage(),
          '/profile_edit': (context) => const ProfilePage(),
        },
      );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child:
              Image.asset('assets/logo_responsi.png', width: 250, height: 250),
        ),
      );
}
