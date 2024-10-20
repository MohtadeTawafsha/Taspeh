import 'package:flutter/material.dart';
import 'package:Taspeh/Pages/Thaker.dart';

class Tasbeh extends StatefulWidget {
  const Tasbeh({super.key});

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/img/moon.gif"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_counter',
                style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const Text(
                'عدد التسبيح',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, bottom: 45),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton.extended(
                heroTag: null,
                onPressed: _resetCounter,
                label: const Text(
                  'تصفير',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black),
                ),
                icon: const Icon(Icons.settings_backup_restore, color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(top: 400) ,
            child: Align(
              alignment: Alignment.center,
              child: FloatingActionButton.extended(
                heroTag: null,
                onPressed: _incrementCounter,
                label: const Text(
                  'تسبيح',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black),
                ),
                icon: const Icon(Icons.fingerprint, color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 45),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                heroTag: null,
                onPressed: () {
                  // Navigate to the Thaker page (or another page)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => daker(),
                    ),
                  );
                },

                label: const Text(
                  'ذكر',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black),
                ),
                icon: const Icon(Icons.book, color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
