import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoints = 0;
  int TeamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                'Points Counter',
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$TeamAPoints',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                TeamAPoints++;
                              });
                            },
                            child: const Text('Add 1 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ))),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                TeamAPoints += 2;
                              });
                            },
                            child: const Text('Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ))),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                TeamAPoints += 3;
                              });
                            },
                            child: const Text('Add 3 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 450,
                      child: VerticalDivider(
                        color: Color(0xFFBABABA),
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$TeamBPoints',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                TeamBPoints++;
                              });
                            },
                            child: const Text('Add 1 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ))),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                TeamBPoints += 2;
                              });
                            },
                            child: const Text('Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ))),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                TeamBPoints += 3;
                              });
                            },
                            child: const Text('Add 3 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ))),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 130,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50)),
                  onPressed: () {
                    setState(() {
                      TeamAPoints = 0;
                      TeamBPoints = 0;
                    });
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            )));
  }
}
