import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pc_pro/screans/home.dart';
import 'package:pc_pro/screans/page_services.dart/mobile.dart';
import 'package:pc_pro/screans/page_services.dart/web.dart';
import 'package:pc_pro/screans/work.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 0.1,
                  ),
                  const Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 140, bottom: 50)),
                      Text(
                        'Services',
                        style: TextStyle(
                          color: Color(0xff2C607D),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  InkWell(
                    //when we click on the service new page will apeer
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mobile()));
                    },

                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 360,
                      width: 500,
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.phone_android_sharp,
                                        size: 40,
                                      ),
                                      Text("Mobile Application"),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.smart_toy_outlined,
                                        size: 40,
                                      ),
                                      Text(
                                        "Game development",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.lightbulb_outline_rounded,
                                        size: 40,
                                      ),
                                      Text("Business Solutions"),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.headset_mic_rounded,
                                        size: 40,
                                      ),
                                      Text(
                                        "Software development",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Web()));
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    width: 144,
                                    height: 144.56,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC5E6E3),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.laptop_chromebook_sharp,
                                          size: 40,
                                        ),
                                        Text("Web development"),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.content_paste,
                                        size: 40,
                                      ),
                                      Text(
                                        "Contant Management",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.money_off_csred_outlined,
                                        size: 40,
                                      ),
                                      Text("Ecommerce"),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 144,
                                  height: 144.56,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC5E6E3),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.mic_none,
                                        size: 40,
                                      ),
                                      Text("Digital Marketing"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 0.1,
                  ),

                  //from here the scroll.horzin start
                  const SizedBox(
                    height: 2,
                  ),
                  const Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        left: 80,
                      )),
                      Text(
                        'Technologies used',
                        style: TextStyle(
                          color: Color(0xff2C607D),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('Flutter',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('React',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('Unity',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('node js',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('Python',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('JAVA',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 97,
                          height: 87,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xff2BBFB0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text('Kotin',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
