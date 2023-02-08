import 'package:flutter/material.dart';



class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe0e0e0),
        appBar: AppBar(
          backgroundColor: Color(0xffe0e0e0),
          centerTitle: true,
          title: Text(
            "Checkout",
            style: TextStyle(
              color: Color(0xff3a3a3a),
              fontWeight: FontWeight.w900,
              fontFamily: "Raleway",
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Delivery",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff3a3a3a),
                      fontFamily: "Raleway",
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      "Address details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff3a3a3a),
                        fontFamily: "Raleway",
                      ),
                    ),
                    Text(
                      "Changes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffe2401a),
                        fontFamily: "Raleway",
                      ),
                    ),
                  ],),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffa5b1b6),
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Color(0xffa5b1b6),
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0)
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lucky Agawal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff3a3a3a),
                                  fontFamily: "Raleway",
                                ),
                              ),
                              Container(height: 1,
                                width: MediaQuery.of(context).size.width*0.6,
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                color: Color(0xffEEEEEE),),

                              Container(
                                width: 190,
                                child: Flexible(
                                  child: Text(
                                    "2401 US-9, Old Bridge, NJ 08857, United States",
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff3a3a3a),
                                      fontFamily: "Raleway",
                                    ),
                                  ),
                                ),
                              ),
                              Container(height: 1,
                                width: MediaQuery.of(context).size.width*0.6,
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                color: Color(0xffEEEEEE),),
                              Container(
                                width: 190,
                                child: Flexible(
                                  child: Text(
                                    "+1 732-721-2525",
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff3a3a3a),
                                      fontFamily: "Raleway",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),





                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Delivery Method",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff3a3a3a),
                      fontFamily: "Raleway",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffa5b1b6),
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Color(0xffa5b1b6),
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: "radio value",
                                groupValue: "group value",
                                onChanged: (value){
                                  print(value); //selected value
                                }
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Door delivery",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color:  Color(0xff3a3a3a),
                                fontFamily: "Raleway",
                              ),
                            ),
                          ],),
                        Container(height: 1,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          color: Color(0xffEEEEEE),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: "radio value",
                                groupValue: "group value",
                                onChanged: (value){
                                  print(value); //selected value
                                }
                            ),

                            SizedBox(width: 10,),
                            Text(
                              "Pick up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color:  Color(0xff3a3a3a),
                                fontFamily: "Raleway",
                              ),
                            ),
                          ],),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff3a3a3a),
                          fontFamily: "Raleway",
                        ),
                      ),
                      Text(
                        "₹ 23,000/-",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color:  Color(0xff3a3a3a),
                          fontFamily: "Raleway",
                        ),
                      ),
                    ],),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xffe2401a),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Text(
                  "Proceed to payment",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Raleway",
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
