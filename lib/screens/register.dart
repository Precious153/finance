import 'package:finance_banking/screens/verify_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool visible = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 41),
                    child: Text("Register",
                    style: TextStyle(
                      fontSize: 44,
                      color: Color(0xFF151940),
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 41,
                  ),

                  Visibility(
                    visible: visible,
                    child: Column(
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
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Full name",
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
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Confirm Password",
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
                            children: [
                              Text("I've read and agree to the",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7F8192),
                              ),),
                              Text(" terms",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF314BCE),
                                  ),),
                              Text("of",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7F8192),
                                  )),
                              Text("privacy policy",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF314BCE),
                                  ))
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
                                height:49,
                                width:332,
                                child:ElevatedButton(

                                  child: Text('Register',
                                    style : TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      visible = false;
                                    });
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
                    replacement:
                       Column(
                         children: [

                           Padding(
                             padding: const EdgeInsets.only(left:41),
                             child: Text("Please enter your phone number and location\n so we can verify you."),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:41,top: 30),
                             child: Text("Enter your location"),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 41,left: 41),
                             child: TextField(
                               decoration: InputDecoration(
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
                             height: 2,
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:41,top: 30),
                             child: Text("Enter your phone number"),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 41,left: 41),
                             child: TextField(
                               decoration: InputDecoration(
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
                              height: 35,
                            ),
                            SizedBox(
                             height:78,
                             width:332,
                             child:ElevatedButton(

                               child: Text('Next',
                                 style : TextStyle(
                                   color: Colors.white,
                                   fontSize: 18,
                                 ),
                               ),
                               onPressed: () {
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Verify()));
                               },
                               style: ElevatedButton.styleFrom(
                                 primary: Color(0xFF5771F9),
                                 shape:RoundedRectangleBorder(borderRadius:
                                 BorderRadius.all(Radius.circular(8))),
                               ),
                             ),
                           ),
                           SizedBox(height: 20,),
                           Text("or"),
                           SizedBox(
                             height: 22,
                           ),

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
                         ],
                       ),
                  ),

                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 41),
                    child: Text("Already have an account?"),
                  ),
                  SizedBox(height: 13,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                            child:  Padding(
                              padding: const EdgeInsets.only(left: 41),
                              child: Text("LOGIN",
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
          ),
        ),
      ),
    );
  }
}
