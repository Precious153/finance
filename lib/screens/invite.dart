import 'package:finance_banking/screens/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 41),
                  child: Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 41),
                  child: Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: Icon(
                      Icons.arrow_upward,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100,),
            Image.asset("assets/images/Illustration.png"),
            Text("Earn \$100",
            style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 17,),
            Text("Invite your friend and you can earn up to \$100 \nfor every 5 friends who transfer over \$400",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18
            ),),
            SizedBox(height: 62,),
            Text("Terms and Conditions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff486484)
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Divider(
                height: 1.5,
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 91,
            ),
            Container(
              height: 78,
              width: 332,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff5771F9),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text("Invite friends now",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                      },
                      child: Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        )
    );
  }
}
