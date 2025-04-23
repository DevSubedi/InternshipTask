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
                      Column(
                        children: [
                          Text(
                            'नेपाल सरकार\nGOVERNMENT OF NEPAL',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 6),
                          Text(
                            'सवारी चालक अनुमतिपत्र\nDRIVING LICENSE',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Image.asset('assets/flag.png', width: 50, height: 50),
                    ],
                  ),
                  SizedBox(height: 5),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              infoText('Name:  ', 'Dev Subedi'),
                              infoText('Parent/Spouse:  ', 'Radheshyam Subedi'),
                              infoText('Citizenship:  ', '27-01-75-01603'),
                              infoText('Date of Birth:  ', "2059-01-29"),
                              infoText('Passport No:  ', ''),
                            ],
                          ),
                          Spacer(),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/pic.jpg',
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),

                      infoText(
                        'Address:  ',
                        'Bhairabmandir-5, Kathmandu, Bagmati',
                      ),
                      Row(
                        children: [
                          infoText('Issue Date:  ', '2022-08-29'),
                          Spacer(),
                          infoText('Expiry Date:  ', '2027-08-28'),
                        ],
                      ),

                      Row(
                        children: [
                          infoText('Blood Group:  ', 'A+'),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: infoText('Category:  ', 'A'),
                          ),
                        ],
                      ),
                    ],
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
      Text(label, style: TextStyle(fontSize: 8)),
    ],
  );
}

Widget infoText(String question, String answer) {
  return Row(
    children: [
      Text(question, style: TextStyle(fontSize: 10)),
      Text(answer, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
      SizedBox(height: 4),
    ],
  );
}
