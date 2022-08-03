import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 41),
                  child: SizedBox(
                    height: 47,
                    width: 47,
                    child: ElevatedButton(onPressed:(){
                    },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.circular(8)),
                          primary: Colors.white,
                        ),
                        child: Icon(
                          Icons.article_outlined,
                          color: Color(0xff000000),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 41),
                  child: SizedBox(
                    height: 47,
                    width: 47,
                    child: ElevatedButton(onPressed:(){
                    },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.circular(8)),
                          primary: Colors.white,
                        ),
                        child: Icon(
                          Icons.abc_rounded,
                          color: Color(0xff000000),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height /5,
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 40,
                    right: 40,
                    child: Container(
                      height: 135,
                      width: 332,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF5F6FA),
                      ),
                      child: Column(
                          children: [
                            SizedBox(height: 49),
                            Text("Domhnall Gleeson",
                            style: TextStyle(
                              fontSize: 26
                            ),),
                            SizedBox(height: 5),
                            Text("account ending with 1545",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),)
                          ]
                      ),
                    ),
                  ),
                  Positioned(
                    top: -12,
                    left: 132,
                    right: 132,
                    child: Container(
                      height: 100,
                      width: 150,
                      child: Image.asset('assets/images/rectangle.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 41),
                  child: Column(
                    children: [
                      SizedBox(
                        height :53,
                        width: 53,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: CircleBorder(),
                              primary: Color(0xffF4F5F9)
                          ),
                          child: Icon(
                            Icons.compare_arrows,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text("Transfer"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height :53,
                      width: 53,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: CircleBorder(),
                            primary: Color(0xffF4F5F9)
                        ),
                        child: Icon(
                          Icons.account_box_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text("Sent"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height :53,
                      width: 53,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: CircleBorder(),
                            primary: Color(0xffF4F5F9)
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text("Shopping"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height :53,
                      width: 53,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: CircleBorder(),
                            primary: Color(0xffF4F5F9)
                        ),
                        child: Icon(
                          Icons.add_to_photos_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text("Bill"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 41),
                  child: Column(
                    children: [
                      SizedBox(
                        height :53,
                        width: 53,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: CircleBorder(),
                              primary: Color(0xffF4F5F9)
                          ),
                          child: Icon(
                            Icons.vrpano_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text("Vouchers"),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 37,
            ),
            Row(
              children: [
                SizedBox(
                  height: 65,
                  width: 162,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 41),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius:
                            BorderRadius.circular(8),
                            ),
                            primary: Color(0xFF7A7AFD)
                        ),
                        child: Column(
                          children: [
                            Text("Salary",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            Text("255,500",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),)
                          ],
                        )),
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
                            primary: Color(0xFF5771F9)
                        ),
                        child: Column(
                          children: [
                            Text("Tranfers",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            Text("42,500",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),)
                          ],
                        )),
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
