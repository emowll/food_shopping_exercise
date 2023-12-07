import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: AnimatedLoginPage(),
      ),
    );
  }
}

class AnimatedLoginPage extends StatefulWidget {
  const AnimatedLoginPage({super.key});

  @override,
  _AnimatedLoginPageState createState() => _AnimatedLoginPageState();
}

class _AnimatedLoginPageState extends State<AnimatedLoginPage> {
  double _opacity = 0.0;
  double _translateY = 0.0;

  @override
  void initState() {
    super.initState();
 ,
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
        _translateY = 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, _translateY, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.yellow, Colors.green, Colors.pink, Colors.red],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.purple,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity,
                child: const Text(
                  'Hoş Geldiniz!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity,
                child: const Text(
                  'Flutter Giriş Sayfası',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                ,
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  shadowColor: Colors.black,
                  elevation: 5,
                ),
                child: const Text(
                  'Giriş Yap',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
          ,
                },
                child: const Text(
                  'Hesap Oluştur',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
