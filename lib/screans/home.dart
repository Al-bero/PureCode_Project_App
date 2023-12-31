import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pc_pro/screans/services.dart';
import 'package:pc_pro/screans/work.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 2;
  final screans = [
    Home(),
    Service(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody =help to make the images fit with navegation bar
      extendBody: true,
//the header of app
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/logo.jpg',
          width: 151,
        ),
      ),
//the menu secsion
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                child: Text(
                  'M E N U',
                  style: TextStyle(fontSize: 35),
                ),
              )),
              ListTile(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Home(),
                )),
                leading: const Icon(Icons.home),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Services(),
                )),
                leading: const Icon(Icons.design_services_rounded),
                title: const Text(
                  'Our Services',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Work(),
                )),
                leading: const Icon(Icons.work),
                title: const Text(
                  'Our Works',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                // onTap: () =>
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                //   builder: (context) => (),
                // )),
                leading: Icon(Icons.import_contacts_rounded),
                title: Text(
                  'Internship',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                // onTap: () =>
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                //   builder: (context) => (),
                // )),
                leading: Icon(Icons.quick_contacts_mail_rounded),
                title: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),

//the body of the home page
      body: Column(
        children: [
          Image.asset('assets/images/program.png'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  width: 338,
                  height: 259,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xff333E50),
                      borderRadius: BorderRadius.circular(130)),
                  child: const Center(
                      child: Text(
                          'About\nPureCode is a Saudi company, Specialized in providing software solutions for business and services, producing advanced software as customers’ request and aspiration.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ))),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  width: 338,
                  height: 259,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xff333E50),
                      borderRadius: BorderRadius.circular(130)),
                  child: const Center(
                      child: Text(
                          'Mission\nBe a major company at middle east at business solutions',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  width: 338,
                  height: 259,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xff333E50),
                      borderRadius: BorderRadius.circular(130)),
                  child: const Center(
                      child: Text(
                          'Vision\nLeader in web design and programming solutions and systems globally.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Indicator(), Indicator(), Indicator()],
          ),
        ],
      ),

//the Footer of app

      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 58,
        backgroundColor: Colors.transparent,
        color: const Color(0xff333E50),
        items: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              ));
            },
            child: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Services(),
              ));
            },
            child: const Icon(
              Icons.design_services_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Work(),
              ));
            },
            child: const Icon(
              Icons.work,
              size: 30,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              ));
            },
            child: const Icon(
              Icons.quick_contacts_mail_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
