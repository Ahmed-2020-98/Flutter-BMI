import 'package:flutter/material.dart';
import 'package:week8/widgets/customclick.dart';

import 'one.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  double heightMan = 180;
  int weight = 50;
  int age = 20;
  bool isMale = true;
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bmi calculator'.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Customclick(
                        widget: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.male,
                                  size: 80,
                                ),
                                Text(
                                  "Male".toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(163, 222, 222, 221)),
                                )
                              ]),
                        ),
                        color: const Color(0xFF1D1E33)),
                    const SizedBox(
                      width: 20,
                    ),
                    Customclick(
                        widget: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.female,
                                  size: 80,
                                ),
                                Text(
                                  "female".toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color:
                                          Color.fromARGB(163, 222, 222, 221)),
                                )
                              ]),
                        ),
                        color: Color(0xFF1D1E33)),
                  ],
                ),
                Container(
                  color: const Color(0xFF1D1E33),
                  width: width,
                  height: height * .20,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "HEIGHT".toUpperCase(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "$heightMan",
                              style: const TextStyle(
                                  fontSize: 37, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              " cm",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Slider(
                            value: heightMan.roundToDouble(),
                            min: 120,
                            max: 230,
                            activeColor: Colors.white,
                            thumbColor: Colors.pink,
                            onChanged: (value) {
                              setState(() {
                                heightMan = value.roundToDouble();
                              });
                            })
                      ]),
                ),
                Row(
                  children: [
                    Customclick(
                        widget: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "weight".toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color:
                                          Color.fromARGB(163, 222, 222, 221)),
                                ),
                                Text(
                                  "$weight",
                                  style: const TextStyle(
                                      fontSize: 37,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey[800],
                                          padding: EdgeInsets.symmetric(
                                              vertical: 18)),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey[800],
                                          padding: EdgeInsets.symmetric(
                                              vertical: 18)),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                        color: Color(0xFF1D1E33)),
                    SizedBox(
                      width: 20,
                    ),
                    Customclick(
                        widget: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "age".toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color:
                                          Color.fromARGB(163, 222, 222, 221)),
                                ),
                                Text(
                                  "$age",
                                  style: const TextStyle(
                                      fontSize: 37,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey[800],
                                          padding: EdgeInsets.symmetric(
                                              vertical: 18)),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey[800],
                                          padding: EdgeInsets.symmetric(
                                              vertical: 18)),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                        color: Color(0xFF1D1E33)),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One(
                  age: age,
                  weight: weight,
                );
              }));

              // Navigator.of(context).pushNamed('pageone');
            },
            child: Container(
              color: Colors.pink,
              width: width,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Center(
                  child: Text(
                "Result",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
            ),
          )
        ],
      ),
    );
  }
}
