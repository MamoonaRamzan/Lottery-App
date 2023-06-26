import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          title: const Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.radar),
              SizedBox(
                width: 10,
              ),
              Text("Lottery App"),
            ],
          )),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.purpleAccent.shade200.withOpacity(0.6),
            Colors.purpleAccent.shade200.withOpacity(0.9),
            Colors.purple.shade800
          ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "Your Lucky number is 5",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ),
                x == 5
                    ? SizedBox(
                        height: 250,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.gpp_good_outlined,
                              size: 100,
                              color: Colors.white,
                            ),
                            const Text(
                              "Congratulations ! You Won",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "Your Number is $x",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 250,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error_outline,
                              size: 100,
                              color: Colors.white,
                            ),
                            const Text(
                              "Better Luck next time",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "Your Number is $x",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.refresh),
                    onPressed: () {
                      x = random.nextInt(10);
                      setState(() {});
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
