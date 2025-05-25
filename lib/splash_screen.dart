import 'package:flutter/material.dart';
import 'client_info_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ClientInfoScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Color(0xFFF8F6F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 500,height: 500,),
            SizedBox(height: 20),
          
          ],
        ),
      ),
    );
  }
}
