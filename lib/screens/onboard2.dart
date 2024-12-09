import 'package:flutter/material.dart';
import 'package:food_couries/authentication/register.dart';
import 'package:food_couries/helpers/basicAppBtn.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 50), // Adjusts the image position
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  "assets/images/Illustration.png",
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Good food at a\ncheap price",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                "You can eat at expensive\nrestaurants with\naffordable price",
                style: TextStyle( fontSize: 18, fontFamily: "Poppins"),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80,),
              Basicappbtn(width: 157,
                  label: "Next",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Register()
                    )
                    );
                  },
                  height: 57)
            ],
          ),
        ],
      ),
    );
  }
}
