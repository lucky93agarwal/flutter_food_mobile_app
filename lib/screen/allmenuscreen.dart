import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AllMenuScreen extends StatefulWidget {
  const AllMenuScreen({Key? key}) : super(key: key);

  @override
  State<AllMenuScreen> createState() => _AllMenuScreenState();
}

class _AllMenuScreenState extends State<AllMenuScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
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

          SizedBox(
            height: 30,
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
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Container(
                   height: MediaQuery.of(context).size.width*0.42,
                   width: MediaQuery.of(context).size.width*0.42,
                   decoration: BoxDecoration(
                       color: Color(0xfffce7b1),
                       borderRadius: BorderRadius.circular(20)),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Image.asset(
                         'assets/images/icons/happyiconfood.png',
                         width: 155,
                         height: 155,
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Text(
                   'Mood Booster',
                   textAlign: TextAlign.center,
                   style: TextStyle(color: Color(0xff323142), fontWeight: FontWeight.w900, fontSize: 16,),
                 ),

                   SizedBox(height: 30,),
                   Container(
                     height: MediaQuery.of(context).size.width*0.42,
                     width: MediaQuery.of(context).size.width*0.42,
                     decoration: BoxDecoration(
                         color: Color(0xffd0e2f7),
                         borderRadius: BorderRadius.circular(20)),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset(
                           'assets/images/icons/chaticonfood.png',
                           width: 155,
                           height: 155,
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 10,),
                   Text(
                     'Gossip with \nFriends',
                     textAlign: TextAlign.start,
                     style: TextStyle(color: Color(0xff323142), fontWeight: FontWeight.w900, fontSize: 16,),
                   ),

                   SizedBox(height: 30,),
                   Container(
                     height: MediaQuery.of(context).size.width*0.42,
                     width: MediaQuery.of(context).size.width*0.42,
                     decoration: BoxDecoration(
                         color: Color(0xffdcd3f4),
                         borderRadius: BorderRadius.circular(20)),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset(
                           'assets/images/icons/sunflowericon.png',
                           width: 155,
                           height: 155,
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 10,),
                   Text(
                     'Mood Booster',
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Color(0xff323142), fontWeight: FontWeight.w900, fontSize: 16,),
                   ),
                   SizedBox(height: 30,),
               ],),

                SizedBox(width: 15,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      height: MediaQuery.of(context).size.width*0.42,
                      width: MediaQuery.of(context).size.width*0.42,
                      decoration: BoxDecoration(
                          color: Color(0xfffcd4de),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons/brainiconfood.png',
                            width: 155,
                            height: 155,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Brain Focus',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff323142), fontWeight: FontWeight.w900, fontSize: 16,),
                    ),

                    SizedBox(height: 30,),
                    Container(
                      height: MediaQuery.of(context).size.width*0.42,
                      width: MediaQuery.of(context).size.width*0.42,
                      decoration: BoxDecoration(
                          color: Color(0xfffbdfcf),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons/sunfod.png',
                            width: 155,
                            height: 155,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Easy Morning',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xff323142), fontWeight: FontWeight.w900, fontSize: 16,),
                    ),


                    SizedBox(height: 30,),
                    Container(
                      height: MediaQuery.of(context).size.width*0.42,
                      width: MediaQuery.of(context).size.width*0.42,
                      decoration: BoxDecoration(
                          color: Color(0xffd2f0d5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons/umbrellaicon.png',
                            width: 155,
                            height: 155,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Easy Morning',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xff323142), fontWeight: FontWeight.w900, fontSize: 16,),
                    ),
                    SizedBox(height: 30,),
                  ],),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
