import 'package:ecommerce_flutter/model/FoodModel.dart';
import 'package:ecommerce_flutter/screen/checkout_screen.dart';
import 'package:ecommerce_flutter/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<FoodModelItem> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.addAll(CategoryDataModel.categoryitems);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  void _bookmark() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe0e0e0),
        appBar: AppBar(
          backgroundColor: Color(0xffe0e0e0),
          centerTitle: true,
          title: Text(
            "Cart",
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.74,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          FoodModelItem itemsnew = items[index];

                          return Slidable(
                            endActionPane: ActionPane(
                              motion: const StretchMotion(),
                              children: [
                                Flexible(
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    margin: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xffe2401a),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.heart_broken,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    margin: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xffe2401a),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                /*SlidableAction(onPressed:(context) => _bookmark(),
                              backgroundColor: Color(0xffe2401a),
                              icon: Icons.heart_broken,
                              )*/
                              ],
                            ),
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0,
                                        ),
                                        BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(-1.0, -1.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 1.0)
                                      ],
                                    ),
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                        depth: -10,
                                        shadowLightColorEmboss:
                                            Color(0xffa5b1b6),
                                        shadowDarkColorEmboss:
                                            Color(0xffa5b1b6),
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(150)),
                                      ),
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Color(0xfff2f7fd),
                                          border: Border.all(
                                              width: 3, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(150.0)),
                                        ),
                                        child: Image.asset(
                                            "assets/images/foodmix.png"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 190,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(itemsnew.date,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff3a3a3a),
                                            fontFamily: "Raleway",
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              itemsnew.subtitle,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w900,
                                                color: Color(0xffeb6456),
                                                fontFamily: "Raleway",
                                              ),
                                            ),
                                            Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 1,
                                                        horizontal: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                    color: Color(0xffe2401a)),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "1",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "-",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17),
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  nextScreen(context, CheckOutScreen());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffe2401a),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Text(
                    "Complete order",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Raleway",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
