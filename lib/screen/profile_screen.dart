import 'dart:ui';

import 'package:ecommerce_flutter/screen/big_product.dart';
import 'package:ecommerce_flutter/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe0e0e0),
        appBar: AppBar(
          backgroundColor: Color(0xffe0e0e0),
          centerTitle: true,
          title: Text(
            "My Profile",
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
                    "Information",
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: new AssetImage("assets/images/manimg.png"),
                                fit: BoxFit.cover,
                              )),
                        ),
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
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Luckyagawral@gmail.com",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xffbebebe),
                                  fontFamily: "Raleway",
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 190,
                                child: Flexible(
                                  child: Text(
                                    "298/45 B Mestan Road, ST. CATHERINE HOSPITAL, Sadr Bazaar, Mirpur, Kanpur, Uttar Pradesh 208001",
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xffbebebe),
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
                    "Payment Method",
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
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffd97d26)
                                ),
                            child: Icon(Icons.credit_card,color: Colors.white,),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Card",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff9e9e9e),
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
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xffd94d91)
                              ),
                              child: Image.asset("assets/images/bankicon.png")
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Bank account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff9e9e9e),
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
                            Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xff1a41df)
                              ),
                              child: Image.asset("assets/images/paypal.png")
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Paypal",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff9e9e9e),
                                fontFamily: "Raleway",
                              ),
                            ),
                          ],),
                      ],
                    ),
                  ),
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
                  "Updates",
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
