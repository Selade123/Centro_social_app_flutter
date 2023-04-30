//import 'dart:html';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:nombre_pendiente/AjustePage.dart';
import 'package:nombre_pendiente/AlbaPage.dart';
import 'package:nombre_pendiente/CuentaPage.dart';
import 'package:nombre_pendiente/ElectricidadPage.dart';
import 'package:nombre_pendiente/FontaneriaPage.dart';
import 'package:nombre_pendiente/JardineriaPage.dart';
import 'package:flutter/material.dart';
import 'package:nombre_pendiente/LoginPage.dart';
import 'CarpinteriaPage.dart';
//import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/loading.gif',
            width: 1000,
            height: 1000,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      nextScreen: const LoginPage(),
      splashIconSize: 1000,
      duration: 4000,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 35, 129, 163),
          automaticallyImplyLeading: false, // Agrega esta línea
          title: Image.asset("assets/al_servicio_logo.png"),
          centerTitle: true,
        ),
        body: const CardExample(),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(235, 35, 129, 163),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CuentaPage()),
                  );
                },
                icon: Image.asset("assets/User.png"),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AjustePage()),
                  );
                },
                icon: Image.asset("assets/config.png"),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CarpinteriaPage()),
            );
          },
          child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/carpinteria.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FontaneriaPage()),
            );
          },
          child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "assets/Fontaneria.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const JardineriaPage()),
            );
          },
          child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "assets/Jardineria.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ElectricidadPage()),
            );
          },
          child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/elec.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AlbaPage()),
            );
          },
          child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/alba.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
