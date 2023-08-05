import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pc_pro/screans/home.dart';
import 'package:pc_pro/screans/services.dart';
import 'package:pc_pro/screans/work.dart';
import 'package:intl/intl.dart';

final _formKey = GlobalKey<FormState>();

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  late String _name;
  late String _email;
  late String _phone;
  TextEditingController _date = TextEditingController();
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

      body: Column(
        children: [
          const Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Text(
                'Order a Service',
                style: TextStyle(
                  color: Color(0xff2C607D),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address.';
                      }
                      if (!value.contains('@')) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number.';
                      }
                      if (value!.length < 10) {
                        return 'Please enter a valid phone number.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _phone = value!;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      controller: _date,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Schedule a meeting"),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2090));

                        if (pickeddate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('yyyy-MM-dd').format(pickeddate);
                          });
                        }
                      },
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('SUBMIT'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text(
                              'The order is completed, we will call you soon, thank you!'),
                        ));
                      }
                    },
                  ),
                  const BackButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
