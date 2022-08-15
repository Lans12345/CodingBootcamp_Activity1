import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  var title = [
    'Personal Data',
    'Settings',
    'E-Statement',
    'Refferal Code',
    'FAQs',
    'Our Handbook',
    'Community',
  ];

  var icons = [
    const Icon(Icons.person),
    const Icon(Icons.settings),
    const Icon(Icons.book),
    const Icon(Icons.circle),
    const Icon(Icons.message_sharp),
    const Icon(Icons.edit),
    const Icon(Icons.groups_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              color: Colors.grey[500],
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.messenger,
              color: Colors.grey[500],
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.mail,
              color: Colors.grey[500],
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
              color: Colors.grey[500],
            )),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 60,
                ),
                title: const Text(
                  'William John Malik',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Aggressive Investor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 0.75,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: icons[index],
                          ),
                        ),
                        title: Text(
                          title[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      );
                    }),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  height: 50,
                  width: 300,
                  child: Center(
                    child: Text(
                      'Next Page',
                      style: TextStyle(
                        color: Colors.purple[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
