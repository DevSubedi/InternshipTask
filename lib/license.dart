import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('License Card', style: TextStyle()),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            color: Colors.lightBlueAccent,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/nepalSarkar.png',
                        width: 50,
                        height: 50,
                      ),
                      Image.asset('assets/flag.png', width: 50, height: 50),
                    ],
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '03-06-01207312',

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Name:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          'Dev Subedi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          'Parent/Spouse:  ',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'RadheShyam Subedi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Citizenship:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          '27-01-75-01603',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Date of Birth: ', style: TextStyle(fontSize: 10)),
                        Text(
                          '2050-01-29',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Passport No: ', style: TextStyle(fontSize: 10)),
                        Text(
                          '4359825',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Address:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          'Bhairabmandir-5, Kathmandu, Bagmati',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Issue Date:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          '2022-08-29',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        Spacer(),
                        Text('Expiry Date:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          '2027-08-28',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Blood Group:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          'A+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        Spacer(),
                        Text('Category:  ', style: TextStyle(fontSize: 10)),
                        Text(
                          'A',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildBox('Issued By'),
                      buildBox('Signature of Holder'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildBox(String label) {
  return Column(
    children: [
      Container(
        width: 80,
        height: 25,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
        ),
      ),
      SizedBox(height: 4),
      Text(label, style: TextStyle(fontSize: 10)),
    ],
  );
}
