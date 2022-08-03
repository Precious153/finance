import 'package:finance_banking/screens/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5771F9),
      body: SafeArea(
        child: Center(
        child :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/logo.png')
            ),
            SizedBox(
              height: 24.41,
            ),
            Text(
              'Wallet',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 65,
                fontFamily: 'Poppins'
              ),
            ),
            Text(
              'Money Transfer,wallet &',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18
              ),
            ),
            Text(
              ' Finance UI Kit',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18
              ),
            ),
            SizedBox(
              height: 78,
            ),
            SizedBox(
              height:78,
              width:332,
              child:ElevatedButton(
                child: Text('Get Started Now',
                  style : TextStyle(
                    color: Color(0xff5771F9),
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape:RoundedRectangleBorder(borderRadius:
                  BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                ),
              ),
            ),

          ],
        ),
        ),
      ),
    );
  }

}
