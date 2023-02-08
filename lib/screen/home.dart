import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/model/FoodModel.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_flutter/screen/allmenuscreen.dart';
import 'package:ecommerce_flutter/screen/bigscreen.dart';
import 'package:ecommerce_flutter/utils/next_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Container(
      child: ListView(
        children: [
          // app bar
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
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
                  width: MediaQuery.of(context).size.width - 80,
                  margin: const EdgeInsets.only(left: 10),
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
                          Text("Search",
                              style: Theme.of(context).textTheme.headline1)
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xff323142),
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: 17,
                            height: 17,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xfff87093),
                                shape: BoxShape.circle),
                            child: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // banner
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            height: 130,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 110,
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffab97f3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "-50% off",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                height: 1.5,
                                letterSpacing: 1.0,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              " the full ",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                height: 1.5,
                                letterSpacing: 1.0,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "price of traditional \nfood",
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w200,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration:
                        BoxDecoration(shape: BoxShape.circle,
                            boxShadow: [
                      BoxShadow(
                        color: Color(0xff735bbb),
                        blurRadius: 10.0,
                        offset: Offset(-2, 4),
                      ),
                    ]),
                    child: Image.asset("assets/images/icons/thali.png"),
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  height: 4,
                  decoration: BoxDecoration(
                      color: Color(0xff323142),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: 10,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  height: 4,
                  decoration: BoxDecoration(
                      color: Color(0xffdde5ed),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: 10,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  height: 4,
                  decoration: BoxDecoration(
                      color: Color(0xffdde5ed),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  "Mood",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Traditional menu",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),

          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  FoodModelItem itemsnew = items[index];

                  if (itemsnew.id == 1) {
                    return Container(
                      height: 155,
                      width: 105,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xffffecb2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(),
                          Image.asset(
                            itemsnew.image,
                            width: 70,
                            height: 70,
                          ),
                          Text(
                            itemsnew.title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Container(),
                        ],
                      ),
                    );
                  } else if (itemsnew.id == 2) {
                    return Container(
                      height: 155,
                      width: 105,
                      margin: const EdgeInsets.only(left: 9, top: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xfffcd4de),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(),
                          Image.asset(
                            itemsnew.image,
                            width: 70,
                            height: 70,
                          ),
                          Text(
                            itemsnew.title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Container(),
                        ],
                      ),
                    );
                  } else if (itemsnew.id == 3) {
                    return Container(
                      height: 155,
                      width: 105,
                      margin: const EdgeInsets.only(left: 9, top: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xffd7edfc),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(),
                          Image.asset(
                            itemsnew.image,
                            width: 70,
                            height: 70,
                          ),
                          Text(
                            itemsnew.title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Container(),
                        ],
                      ),
                    );
                  } else {
                    return InkWell(
                      onTap: (){

                        nextScreen(context, AllMenuScreen());
                      },
                      child: Container(
                        height: 155,
                        width: 105,
                        alignment: Alignment.center,
                        margin:
                            const EdgeInsets.only(left: 9, top: 10, right: 18),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xffd7edfc))),
                        child: Text("View all",textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff30334f),
                              fontWeight: FontWeight.w900),),
                      ),
                    );
                  }
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Recommended",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  Container(
                    width: 165,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe1e1e1),
                            blurRadius: 20.0,
                            offset: Offset(5, 5),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/icons/thali.png",
                          width: 130,
                          height: 130,
                        ),
                        SizedBox(height: 10,),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                          child:  Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 7,right: 7,bottom: 2),
                                decoration: BoxDecoration(
                                    color: Color(0xffd7edfc),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text("energy booster",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xff30334f),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),),
                              ),
                            ],
                          ),),

                        SizedBox(height: 10,),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                          child: Row(
                            children: [
                              Text("Rajasthani Thali",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff30334f),
                                    fontWeight: FontWeight.w900),),
                            ],
                          ),),


                        SizedBox(height: 5,),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("₹ 500/-",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff30334f),
                                    fontWeight: FontWeight.w900),),
                              InkWell(
                                onTap: (){
                                  nextScreen(context, BigScreen());
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xff323142),
                                      borderRadius: BorderRadius.circular(15.0)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],),),

                      ],),
                  ),
                  Container(
                    width: 165,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe1e1e1),
                            blurRadius: 20.0,
                            offset: Offset(5, 5),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/icons/thali3.png",
                          width: 130,
                          height: 130,
                        ),
                        SizedBox(height: 10,),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                          child:  Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 7,right: 7,bottom: 2),
                                decoration: BoxDecoration(
                                    color: Color(0xffd7edfc),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text("energy booster",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xff30334f),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),),
                              ),
                            ],
                          ),),

                        SizedBox(height: 10,),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                          child: Row(
                            children: [
                              Text("Rajasthani Thali",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff30334f),
                                    fontWeight: FontWeight.w900),),
                            ],
                          ),),


                        SizedBox(height: 5,),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("₹ 500/-",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff30334f),
                                    fontWeight: FontWeight.w900),),
                              InkWell(
                                onTap: (){
                                  nextScreen(context, BigScreen());
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xff323142),
                                      borderRadius: BorderRadius.circular(15.0)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],),),

                      ],),
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
                Container(
                  width: 165,
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffe1e1e1),
                          blurRadius: 20.0,
                          offset: Offset(5, 5),
                        ),
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/icons/thali2.png",
                        width: 130,
                        height: 130,
                      ),
                      SizedBox(height: 10,),

                      Container(
                        padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                        child:  Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 7,right: 7,bottom: 2),
                              decoration: BoxDecoration(
                                  color: Color(0xffd7edfc),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("energy booster",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff30334f),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10),),
                            ),
                          ],
                        ),),

                      SizedBox(height: 10,),

                      Container(
                        padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                        child: Row(
                          children: [
                            Text("Punjabi Thali",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff30334f),
                                  fontWeight: FontWeight.w900),),
                          ],
                        ),),


                      SizedBox(height: 5,),

                      Container(
                        padding: const EdgeInsets.only(left: 20,right: 7,bottom: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("₹ 300/-",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff30334f),
                                  fontWeight: FontWeight.w900),),
                            InkWell(
                              onTap: (){
                                nextScreen(context, BigScreen());
                              },
                              child:  Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff323142),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],),),

                    ],),
                )
              ],),
              
            ],),
          )

        ],
      ),
    ));
  }
}
