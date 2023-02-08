

import 'package:ecommerce_flutter/model/FoodModel.dart';
import 'package:ecommerce_flutter/screen/big_product.dart';
import 'package:ecommerce_flutter/screen/cart_screen.dart';
import 'package:ecommerce_flutter/screen/profile_screen.dart';
import 'package:ecommerce_flutter/screen/search_screen.dart';
import 'package:ecommerce_flutter/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SecondHomeScreen extends StatefulWidget {
  const SecondHomeScreen({Key? key}) : super(key: key);

  @override
  State<SecondHomeScreen> createState() => _SecondHomeScreenState();
}

class _SecondHomeScreenState extends State<SecondHomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      body: Container(

        child: Stack(
          children: [

            ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                // app bar
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 15,
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff323142),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            width: 25,
                            height: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff323142),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            width: 20,
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff323142),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Image.asset("assets/images/shopping_cart.png"),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  child: Text(
                    "Delicious\nfood for you",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xff3a3a3a),
                      fontSize: 30,
                      height: 1.2,
                      fontFamily: "Raleway",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: (){
                    nextScreen(context, SearchScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6f7),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                "assets/images/icons/ic_search.png",
                                width: 20,
                                height: 20,
                              ),
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Raleway"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40,),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder:  (context, index) {
                        FoodModelItem itemsnew = items[index];
                        if(index == 0){
                          return Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  itemsnew.title,
                                  style:
                                  TextStyle(fontSize: 15, color: Color(0xffeb6456)),
                                ),
                                Container(
                                  width: 80,
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Color(0xffeb6456),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                          );
                        }else{
                          return Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: Text(
                              itemsnew.title,
                              style:
                              TextStyle(fontSize: 15, color: Colors.grey[500],),
                            ),
                          );
                        }

                      }),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      "See more",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 15,fontWeight: FontWeight.w900, color: Color(0xffeb6456),),
                    ),
                  ),
                ),

                Container(
                  height: 350,
                  margin: const EdgeInsets.only(left: 40),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder:  (context, index) {
                        FoodModelItem itemsnew = items[index];

                          return InkWell(
                            onTap: (){
                              nextScreen(context, BigProductScreen());
                            },
                            child: Container(
                              height: 350,
                              child: Stack(
                                children: [

                                  Container(
                                    height: 250,
                                    width: 200,
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(right: 30,top: 60),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      Text(
                                        itemsnew.date,
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 20,fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),fontFamily: "Raleway",),
                                      ),

                                        SizedBox(height: 20,),
                                        Text(
                                          itemsnew.subtitle,
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 20,fontWeight: FontWeight.w900, color: Color(0xffeb6456),fontFamily: "Raleway",),
                                        ),
                                        SizedBox(height: 20,),
                                    ],)
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 140,
                                      height: 140,
                                      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
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
                                          shadowLightColorEmboss: Color(0xffa5b1b6),
                                          shadowDarkColorEmboss: Color(0xffa5b1b6),
                                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(150)),
                                        ),
                                        child: Container(
                                          width: 140,
                                          height: 140,
                                          padding:  const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            color: Color(0xfff2f7fd),
                                            border: Border.all(width: 3,color: Colors.white),
                                            borderRadius: BorderRadius.all(Radius.circular(150.0)),
                                          ),
                                          child:Image.asset("assets/images/foodmix.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );


                      }),
                )
              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home,color: Color(0xffeb6456),size: 25,),
                    InkWell(onTap: (){
                      nextScreen(context, CartScreen());
                    },child: Image.asset('assets/images/bookmark.png',width: 25,)),
                    InkWell(onTap: (){
                      nextScreen(context, ProfileScreen());
                    },child: Icon(Icons.perm_identity,color: Color(0xff888888),size: 25,)),
                    Icon(Icons.refresh,color: Color(0xff888888),size: 25,),

                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
