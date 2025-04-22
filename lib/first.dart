import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Task'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text('SN: '),
                      Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    children: [
                      Text('Vehicle No: '),
                      Text(
                        'Pradesh 3-01-12-Pa-1000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Condition: '),
                      Text(
                        'Pending',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Vehicle Owner: '),
                      Text(
                        'Gaurav Thapa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Engine Number: '),
                      Text(
                        'eng123',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Chasis Number: '),
                      Text(
                        'asdas 123',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Aabedan given date (AD): '),
                      Text(
                        '2025-04-20',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
