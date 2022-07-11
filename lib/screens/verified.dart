import 'package:finance_banking/screens/login.dart';
import 'package:flutter/material.dart';

class Verified extends StatelessWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5771F9),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Image.asset("assets/images/Frame.png"),
              Text("Welcome Mickey!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 42,
                color: Colors.white,
              ),),
              SizedBox(
                height: 20,
              ),
              Text("It seems everything went well and your \n app is ready to work with you",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 56,
                width: 185,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(8))
                  ),
                    child: Text("Get Started",
                    style: TextStyle(
                      color: Colors.black
                    ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
