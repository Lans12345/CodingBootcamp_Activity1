import 'package:flutter/material.dart';
import 'package:flutter_application_1/third_page.dart';

// Screen 2

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text(
          'Personal Data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          CircleAvatar(
            maxRadius: 50,
            minRadius: 50,
            backgroundColor: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Name',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: Colors.grey[200],
                  title: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                    child: Text(
                      'Wiliam John Malik',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Date of Birth',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: Colors.grey[200],
                  trailing: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Icon(Icons.arrow_downward),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                    child: Text(
                      '24 December 1999',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Your Job',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: Colors.grey[200],
                  title: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                    child: Text(
                      'Successor Designer',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Monthly Income',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: Colors.grey[200],
                  trailing: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Icon(Icons.arrow_downward),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                    child: Text(
                      "500 - 3000 / year",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: Colors.grey[200],
                  title: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                    child: Text(
                      "Male",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: Colors.grey[200],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: const Center(child: Text('Next Page')),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
