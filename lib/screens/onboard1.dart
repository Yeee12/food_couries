import 'package:flutter/material.dart';
import 'package:food_couries/authentication/register.dart';
import 'package:food_couries/helpers/basicAppBtn.dart';
import 'package:food_couries/screens/onboard2.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

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
                  "assets/images/Illustartion.png",
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Select the\n Favorities Menu",
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
                "Now eat well, don't leave the house,You can\nchoose your favorite food only with\none click",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80,),
              Basicappbtn(width: 157,
                  label: "Next",
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Onboard2()
                )
                );
                  },
                  height: 57)
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: -5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Register()
                    )
                    );
                  },
                ),
                InkWell(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                    size: 24,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Onboard2()
                    )
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
