import 'package:flutter/material.dart';
import 'package:food_couries/screens/onboard1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    redirect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/under.png"),
            SizedBox(height: 10,),
            Text("Food Couriers", style: TextStyle(color: Color(0xffD61355), fontSize: 45, fontWeight: FontWeight.bold, fontFamily: "Poppins"),)
          ],
        ),
      ),
    );
  }
  Future<void>redirect() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> Onboard1()
    )
    );
  }
}
