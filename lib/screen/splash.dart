import 'package:festo/screen/signin.dart';
import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetologin();
  }
   _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  width: 200,
                  height: 200,

                )
              ],
            ),
            SizedBox( height: 20,),
            Column(
              children: [
                // Text(
                //   'Chhavi',
                //   style: TextStyle(
                //     fontFamily: 'Arial',
                //     fontSize: 28, 
                //     ),
                // ),
                Text(
                  'Slogn',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 20, 
                    fontWeight: FontWeight.w800,
                    ),
                  )
              ],
            ),
            SizedBox(height: 150,),
            Column(
              children: [
                // Padding(padding: EdgeInsets.all)
                LoadingAnimationWidget.fourRotatingDots(color: Colors.orange, size: 40)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('Develop By Shubham')
              ],
            )
          ],
        ) 
        ),
    );
  }
}