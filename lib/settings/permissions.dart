import 'package:flutter/material.dart';

class Permissions extends StatefulWidget {
  const Permissions({Key? key}) : super(key: key);

  @override
  State<Permissions> createState() => _PermissionsState();
}

class _PermissionsState extends State<Permissions> {
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
              'Permissions',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            child: ListTile(
              title: Text(
                'Access Location',
                style: TextStyle(fontSize: 22),
              ),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0.0),
            child: ListTile(
              title: Text(
                'Access Camera',
                style: TextStyle(fontSize: 22),
              ),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0.0),
            child: ListTile(
              title: Text(
                'Access Microphone',
                style: TextStyle(fontSize: 22),
              ),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
