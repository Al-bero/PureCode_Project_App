import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pc_pro/screans/home.dart';

import '../services.dart';
import '../work.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  builder: (context) => Services(),
                )),
                leading: Icon(Icons.design_services_rounded),
                title: Text(
                  'Our Services',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Work(),
                )),
                leading: Icon(Icons.work),
                title: Text(
                  'Our Works',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
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
              ListTile(
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
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: const Color(0xff333E50),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.design_services_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.work,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.quick_contacts_mail_rounded,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        //leading: Container(

        title: Image.asset(
          'assets/images/logo.jpg',
          width: 151,
        ),

        //)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(left: 140, bottom: 50)),
                const Text(
                  'Mobile Applications\n',
                  style: TextStyle(
                    color: Color(0xff2C607D),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    'PureCode application development teams believe in developing quality in an artistic way.\nBe it Android, IOS, or windows, our mobile apps development will enable you to run it on every platform using our apps development platform. We offer both Back and front-end development tools, and covering various mobile app development platforms like Android, iOS, Windows, etc. High-quality engineer Scrum Master',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff2C607D),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const BackButton(),
                Container(
                  height: 28,
                  width: 89,
                  decoration: BoxDecoration(
                      color: const Color(0xffAADED9),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(-0, 4))
                      ]),
                  child: const Center(
                    child: Text(
                      'ORDER',
                      style: TextStyle(
                          color: Color(0xff2C607D),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
