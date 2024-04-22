import 'package:flutter/material.dart';

class LatihanLooping extends StatefulWidget {
  const LatihanLooping({super.key});

  @override
  State<LatihanLooping> createState() => _LatihanLoopingState();
}

class _LatihanLoopingState extends State<LatihanLooping> {
  List hasilproses = [];
  List nama = ['alex', 'boy', 'samuel', 'lirr', 'pvnk'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: const Center(
          child: Text('Latihan Looping'),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 80.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasilproses.clear();
                          for (var i = 1; i <= 100; i++) {
                            hasilproses.add(i);
                          }
                        });
                      },
                      child: const Text('FOR'),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasilproses.clear();
                          int bil1 = 1;
                          while (bil1 <= 10) {
                            hasilproses.add(bil1);
                            bil1++;
                          }
                        });
                      },
                      child: const Text('WHILE'),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasilproses.clear();
                          int bil = 1;
                          do {
                            hasilproses.add(bil);
                            bil += 2;
                          } while (bil <= 100);
                        });
                      },
                      child: const Text('DO WHILE'),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasilproses.clear();
                          nama.forEach((element) {
                            hasilproses.add(element);
                          });
                        });
                      },
                      child: const Text('FOR EACH'),
                    ),
                  ),
                ],
              ),
            ),
            Text(hasilproses.toString()),
          ],
        ),
      ),
    );
  }
}
