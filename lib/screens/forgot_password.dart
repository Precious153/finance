import 'package:finance_banking/size.config.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: SizedBox(
                height: 47,
                width: 47,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(8)),
                      primary: Colors.white,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff000000),
                    )),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Text("Reset Password",
                style: TextStyle(
                  fontSize: 44,
                  color: Colors.black,
                ),),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Text("Please enter your email address or \n phone number to reset your password",
                style: TextStyle(
                  fontSize:18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41,right: 41),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,
                      color: Color(0xFF314BCE),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    height:78,
                    width:332,
                    child:ElevatedButton(

                      child: Text('Send',
                        style : TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF5771F9),
                        shape:RoundedRectangleBorder(borderRadius:
                        BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
