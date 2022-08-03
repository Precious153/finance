import 'package:flutter/cupertino.dart';
import 'recent_recipient.dart';
import 'mainScreen.dart';
import 'package:flutter/material.dart';

class Recipient extends StatelessWidget {
  const Recipient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 41),
                child: Container (
                  height: 47,
                  width: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 41),
                child: Container (
                  height: 47,
                  width: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 41,top: 21),
                child: Text("Recipients",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff151940),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 41,top:31 ),
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          ),
          SizedBox(height: 21,),

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
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("My personal accounts (4)",
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
                ),
                
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 41),
            child: Row(
              children: [
                Text("RECENT RECEIPTS",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14
                ),),
              ],
                ),
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: recent.length,
                  itemBuilder: (context,index){
                    final recentR = recent[index];
                    return receipts(
                        recentR.image,recentR.name,recentR.account,recentR.send
                    );
                  }),

          ),
          Column(
            children: [
                 SizedBox(
                  height: 94,
                  width: 94,
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: Text("ADD"),
                    backgroundColor: Color(0xff5771F9),
                    elevation: 2,
                  ),
                ),
            ],
          )
        ],
      ),
    ));
  }
  Widget receipts (String imageUlr,String name, String account, String send){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Image.asset(imageUlr),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
                Text(account,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(right: 41),
          child: Text(send,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700
            ),),
        ),
      ],
    );
  }
}
