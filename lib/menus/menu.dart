import 'package:echo/auth/login.dart';
import 'package:echo/home/appointments.dart';
import 'package:flutter/material.dart';

import '../settings/settings.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Menu',
              style: TextStyle(color: Colors.black,fontSize: 22),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.red[800],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Dr. John Doe',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View your profile',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.business,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Appointment',style: TextStyle(fontSize: 22),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Appointments()));
                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.note_alt,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Report',style: TextStyle(fontSize: 22),),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.computer,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Vitals',style: TextStyle(fontSize: 22),),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.medical_information,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Medication',style: TextStyle(fontSize: 22),),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.medical_services,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Diagnoses',style: TextStyle(fontSize: 22),),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.graphic_eq,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Demographics',style: TextStyle(fontSize: 22),),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.production_quantity_limits,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Providers',style: TextStyle(fontSize: 22),),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red[800],
                  size: 30,
                ),
                title: Text('Logout',style: TextStyle(fontSize: 22),),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
