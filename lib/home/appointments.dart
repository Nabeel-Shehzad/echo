import 'package:echo/appointments/bookAppointment.dart';
import 'package:echo/appointments/rechedule.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Appointments',
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.red[800],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BookAppointment()));
              },

            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
                child: ListTile(
                  tileColor: Colors.deepOrange.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: SizedBox(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. John Doe',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Dentist',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Date: 12/12/2021',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Time: 12:00 PM',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Status: Pending',
                          style: TextStyle(fontSize: 14),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 10.0,
                                minimumSize: Size(100, 30),
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onPressed: () {
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 10.0,
                                primary: Colors.black,
                                minimumSize: Size(100, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onPressed: () {
                                SnackBar snackBar = SnackBar(
                                    content: Text("Tapped : ${index + 1}")
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Reschedule()));
                              },
                              child: Text(
                                'Reschedule',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    SnackBar snackBar = SnackBar(
                        content: Text("Tapped : ${index + 1}")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ),
            );
          },
      ),
        );
  }
}
