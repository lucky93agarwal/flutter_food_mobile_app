import 'package:ecommerce_flutter/screen/big_product.dart';
import 'package:ecommerce_flutter/screen/bigscreen.dart';
import 'package:ecommerce_flutter/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      body: Container(
        child: Column(children: [

          // app bar
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.13,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 40, right: 40),
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios,color: Color(0xff3a3a3a),size: 15,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.all(5),
                  child: Text("Veggie tomato mix",style: TextStyle(color: Color(0xff3a3a3a),fontWeight: FontWeight.w900,fontFamily: "Raleway",),),
                ),
              ],
            ),
          ),


          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.87,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
            ),
            child: ListView(children: [

              Text("Found 3 results",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Color(0xff3a3a3a),fontWeight: FontWeight.w900,fontFamily: "Raleway",),),
              SizedBox(
                height: 20,
              ),

              Container(
                margin: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      InkWell(
                        onTap: (){
                          nextScreen(context, BigProductScreen());
                        },
                        child: Container(
                          height: 270,
                          child: Stack(
                            children: [

                              Container(
                                  height: 220,
                                  width: 165,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 60),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffe1e1e1),
                                          blurRadius: 20.0,
                                          offset: Offset(5, 5),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rajasthani Thali",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 20,fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),fontFamily: "Raleway",),
                                      ),

                                      SizedBox(height: 20,),
                                      Text(
                                        "₹ 900/-",
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
                                  width: 120,
                                  height: 120,
                                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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
                                      padding:  const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Color(0xfff2f7fd),
                                        border: Border.all(width: 3,color: Colors.white),
                                        borderRadius: BorderRadius.all(Radius.circular(150.0)),
                                      ),
                                      child:Image.asset("assets/images/icons/thali.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          nextScreen(context, BigProductScreen());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 270,
                          child: Stack(
                            children: [

                              Container(
                                  height: 220,
                                  width: 165,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 60),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffe1e1e1),
                                          blurRadius: 20.0,
                                          offset: Offset(5, 5),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rajasthani Thali",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 20,fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),fontFamily: "Raleway",),
                                      ),

                                      SizedBox(height: 20,),
                                      Text(
                                        "₹ 500/-",
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
                                  width: 120,
                                  height: 120,
                                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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
                                      width: 190,
                                      height: 190,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff2f7fd),
                                        border: Border.all(width: 3,color: Colors.white),
                                        borderRadius: BorderRadius.all(Radius.circular(150.0)),
                                      ),
                                      child:Image.asset("assets/images/icons/thali.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],),


                    Column(children: [
                      Container(
                        width: 165,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xffd7edfc))),
                        child: Row(children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),

                            decoration: BoxDecoration(
                                color: Color(0xfff5f6f7),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xfff5f6f7))),
                            child: Icon(Icons.arrow_forward,color: Color(0xff30334f),),
                          ),
                          SizedBox(width: 20,),
                          Text("View all",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xff30334f),
                                fontWeight: FontWeight.w900),),
                        ],),
                      ),

                      InkWell(
                        onTap: (){
                          nextScreen(context, BigProductScreen());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10,left: 10),
                          height: 270,
                          child: Stack(
                            children: [

                              Container(
                                  height: 220,
                                  width: 165,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 60),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffe1e1e1),
                                          blurRadius: 20.0,
                                          offset: Offset(5, 5),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Punjabi Thali",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 20,fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),fontFamily: "Raleway",),
                                      ),

                                      SizedBox(height: 20,),
                                      Text(
                                        "₹ 300/-",
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
                                  width: 120,
                                  height: 120,
                                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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
                                      width: 190,
                                      height: 190,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff2f7fd),
                                        border: Border.all(width: 3,color: Colors.white),
                                        borderRadius: BorderRadius.all(Radius.circular(150.0)),
                                      ),
                                      child:Image.asset("assets/images/icons/thali2.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],),

                  ],),
              )
            ],),
          )
        ],),
      ),
    );
  }
}
