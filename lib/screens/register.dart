import 'package:finance_banking/screens/verify_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool visible = true;

  bool visible2 = false;
  bool visible3 = false;
  bool _checked = false;
  String selectedCountry = "Country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Container(
                          width: 64,
                          child: Divider(
                            height: 2,
                            thickness: 1,
                          ),
                        ),
                      ),
                      Text("or"),

                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Container(
                          width: 64,
                          child: Divider(
                            height: 2,
                            thickness: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 41,left: 41,top: 20),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "Full name",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF314BCE),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: visible2,
                          decoration: InputDecoration(
                            suffixIcon:IconButton(onPressed: (){
                              setState(() {
                                visible2=!visible2;
                              });
                            },
                                icon:visible2?Icon(
                                  Icons.visibility,
                                  color: Color(0xFF5771F9),
                                ):Icon(
                                  Icons.visibility_off,
                                  color: Color(0xFF5771F9),
                                )),
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: visible3,
                          decoration: InputDecoration(
                            suffixIcon:IconButton(onPressed: (){
                              setState(() {
                                visible3=!visible3;
                              });
                            },
                                icon:visible3?Icon(
                                  Icons.visibility,
                                  color: Color(0xFF5771F9),
                                ):Icon(
                                  Icons.visibility_off,
                                  color: Color(0xFF5771F9),
                                )),
                            hintText: "Confirm Password",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xFF5771F9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        )
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
                        Checkbox(
                          activeColor: Color(0xFF5771F9),
                          value: _checked,
                          onChanged: (bool? value) {
                           setState(() {
                             _checked =!_checked;
                           });
                          },
                        ),
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
                    height: 24,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 41,left: 41),
                        child: Center(
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
                      ),
                    ],
                  ),
                ],
              ),
              replacement:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
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
                         readOnly: true,
                         keyboardType: TextInputType.none,
                         decoration: InputDecoration(
                           hintText: selectedCountry,
                           hintStyle: TextStyle(
                             color: Colors.black
                           ),
                           suffixIcon: IconButton(
                             icon: Icon(
                               Icons.arrow_drop_down
                             ),
                             onPressed: () {
                               showCountryPicker(
                                   context: context,
                                   onSelect: (selected){
                                     setState(() {
                                       selectedCountry=selected.name;
                                     });
                                   });
                             },
                           ),
                           border:  OutlineInputBorder(
                             borderSide: BorderSide(width: 1,
                               color: Color(0xFF314BCE),
                             ),
                             borderRadius: BorderRadius.circular(8),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 41),
                       child: Text("Enter your phone number"),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 41,left: 41),
                       child: TextField(
                         keyboardType: TextInputType.number,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 41,left: 41),
                        child: Center(
                          child: SizedBox(
                           height:49,
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
                        ),
                      ),
                     SizedBox(
                       height: 20,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 90),
                           child: Container(
                             width: 64,
                             child: Divider(
                               height: 2,
                               thickness: 1,
                             ),
                           ),
                         ),
                         Text("or"),

                         Padding(
                           padding: const EdgeInsets.only(right: 90),
                           child: Container(
                             width: 64,
                             child: Divider(
                               height: 2,
                               thickness: 1,
                             ),
                           ),
                         ),
                       ],
                     ),
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
              padding: const EdgeInsets.only(bottom: 0),
              child: Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 41),
                        child: Text("LOGIN",
                          style: TextStyle(
                            color: Color(0xFF5771F9),

                          ),),
                      ),),
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
