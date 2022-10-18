import 'package:echo/settings/permissions.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              'Settings',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
              child: ListTile(
                title: Text('Permission',style: TextStyle(fontSize: 22),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Permissions()));
                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 8),
              child: ListTile(
                title: Text('Privacy Policy',style: TextStyle(fontSize: 22),),
                onTap: (){

                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 8),
              child: ListTile(
                title: Text('Terms & Conditions',style: TextStyle(fontSize: 22),),
                onTap: (){

                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 8),
              child: ListTile(
                title: Text('About US',style: TextStyle(fontSize: 22),),
                onTap: (){

                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 8),
              child: ListTile(
                title: Text('Help',style: TextStyle(fontSize: 22),),
                onTap: (){

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
