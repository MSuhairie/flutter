import 'package:flutter/material.dart';

void main() {
  runApp(const StarScreens());
}

class StarScreens extends StatefulWidget {
  const StarScreens({super.key});

  @override
  State<StarScreens> createState() {
    return _StarScreensState();
  }
}

class _StarScreensState extends State<StarScreens> {

  var activeScreen = 'star-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'next-screen';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StyleText(switchScreen);

    if (activeScreen == 'next-screen') {
      screenWidget = const Page1();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 184, 184, 35),
                Color.fromARGB(255, 130, 119, 23),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}

class StyleText extends StatelessWidget {
  const StyleText(this.page1Screen, {super.key});

  final void Function() page1Screen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(160, 255, 255, 255),
        ),
        const SizedBox(height: 40),
        const Text(
          'Selamat Datang Di Aplikasi Saya',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton.icon(
          onPressed: page1Screen,
          icon: const Icon(Icons.arrow_right_alt_rounded),
          style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 184, 184, 35),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          label: const Text('Klik Disini'),
        ),
      ],
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Hello Word');
  }
}


