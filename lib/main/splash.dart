import 'package:flutter/material.dart';

import '../auth/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigateHome();
  }
  _navigateHome() async{
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 200,
              height: 200,
            ),
            Image(
              image: AssetImage(
                'assets/images/name.png',
              ),
              width: 200,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
