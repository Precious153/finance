import 'package:finance_banking/screens/forgot_password.dart';
import 'package:finance_banking/screens/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Text("Log In",
                style: TextStyle(
                  fontSize: 44,
                  color: Color(0xFF151940),
                ),
              ),
            ),
            SizedBox(
              height: 41,
            ),
                Column(
                children: [
                  Row(
                    children: [

                      SizedBox(
                        height: 53,
                        width: 161,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 41),
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius:
                                  BorderRadius.circular(8),
                                  ),
                                  primary: Color(0xFFF5F6FA)
                              ),
                              child: Text("GOOGLE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),)),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 53,
                        width: 161,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 41),
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius:
                                  BorderRadius.circular(8),
                                  ),
                                  primary: Color(0xFFF5F6FA)
                              ),
                              child: Text("FACEBOOK",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text("or"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 41,left: 41,top: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
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
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF314BCE),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 41),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                      },
                          child:   Padding(
                            padding: const EdgeInsets.only(right: 41),
                            child: Text("forgot password?",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF314BCE),
                                )),
                          ),),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 54,
                  ),
                  Column(
                    children: [
                      Center(
                        child: SizedBox(
                          height:78,
                          width:332,
                          child:ElevatedButton(

                            child: Text('Log In',
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

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Text("Don't have an  account?"),
            ),
            SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                children: [
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
                },
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 41),
                      child: Text("REGISTER",
                        style: TextStyle(
                          color: Color(0xFF5771F9),
                        ),),
                    ),),
                  SizedBox(width: 23,),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF5771F9),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
