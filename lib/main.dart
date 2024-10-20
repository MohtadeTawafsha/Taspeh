import 'dart:async';
import 'package:flutter/material.dart';
import 'package:Taspeh/Pages/Tasbeh.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.green, hintColor: Colors.white70),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Tasbeh()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/img/intro.gif"), fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded //width of page
                  (
                      flex: 2,
                      child: Container(
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 80.0,
                              child: Image(
                                image: AssetImage("lib/img/tasbeh.png"),
                                fit: BoxFit.cover,
                                height: 140,
                                width: 115,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "سبح بأسم ربك الاعلى",
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )
                          ],
                        ),
                      )),
              const Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Colors.brown,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text("اقطع اتصالك بالانترنت نت كي لا تزعجك الاعلانات",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
