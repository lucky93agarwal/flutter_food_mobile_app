import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class BigScreen extends StatefulWidget {
  const BigScreen({Key? key}) : super(key: key);

  @override
  State<BigScreen> createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {


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
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.85,
                  decoration: BoxDecoration(
                    color: Color(0xfff4f2fc),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),

                  ),
                  child: ListView(children: [
                    // app bar..
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: Color(0xffe8e5f4),
                                borderRadius: BorderRadius.circular(15.0)
                              ),
                              child: Icon(Icons.arrow_back_ios,color: Color(0xff333243),size: 20,),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Icon(Icons.heart_broken,color: Color(0xff333243),size: 20,),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Rajasthani Thali",
                      textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff333243),
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                    ),),
                    SizedBox(height: 15,),
                    Text("₹ 300",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff333243),
                          fontWeight: FontWeight.w900,
                          fontSize: 20
                      ),),

                    Container(
                      height: 280,
                      margin: const EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff735bbb),
                              blurRadius: 15.0,
                              offset: Offset(-4, 4),
                            ),
                          ]
                      ),
                      child: Image.asset("assets/images/icons/thali.png"),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            height: 120,
                            child: Stack(children: [

                              Container(width: 90,
                                height: 90,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(left: 20,top: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(25.0))
                                ),
                                child: Image.asset("assets/images/icons/milksicon.png"),),
                              Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(

                                    padding: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff333243)
                                    ),
                                    child: Text("-",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20),),
                                  )),

                            ],),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left: 20,top: 5),
                            child: Text("Almond Milk",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff333243),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13
                              ),),
                          ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Text("30kcal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffabacc2),
                                    fontSize: 11
                                ),),
                            ),


                        ],),




                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              child:  Stack(children: [
                                Container(width: 90,
                                  height: 90,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(left: 10,top: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                                  ),
                                  child: Stack(children: [
                                    Image.asset("assets/images/icons/gulabicon.png")
                                  ],),),
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(

                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff333243)
                                      ),
                                      child: Text("-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),),
                                    )),

                              ],),
                            ),

                            Container(
                              margin: const EdgeInsets.only(left: 20,top: 5),
                              child: Text("Rasgulla",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff333243),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13
                                ),),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Text("170kcal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffabacc2),
                                    fontSize: 11
                                ),),
                            ),


                          ],),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              child:   Stack(children: [
                                Container(width: 90,
                                  height: 90,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(left: 10,top: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                                  ),
                                  child: Stack(children: [
                                    Image.asset("assets/images/icons/jalebiicon.png")
                                  ],),),
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(

                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff333243)
                                      ),
                                      child: Text("-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),),
                                    )),

                              ],),
                            ),

                            Container(
                              margin: const EdgeInsets.only(left: 20,top: 5),
                              child: Text("Jalebi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff333243),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13
                                ),),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Text("140kcal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffabacc2),
                                    fontSize: 11
                                ),),
                            ),


                          ],),



                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              child: Stack(children: [
                                Container(width: 90,
                                  height: 90,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(left: 10,top: 20,right: 20),
                                  decoration: BoxDecoration(
                                      color: Color(0xffe8e5f4),
                                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                                  ),
                                  child: Stack(children: [
                                    Image.asset("assets/images/icons/icecreamicon.png")
                                  ],),),
                                Positioned(
                                    right: 15,
                                    bottom: 0,
                                    child: Container(

                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffffffff)
                                      ),
                                      child: Icon(Icons.add,color: Color(0xff30334f),size: 15,),
                                    )),

                              ],),
                            ),

                            Container(
                              margin: const EdgeInsets.only(left: 20,top: 5),
                              child: Text("Ice Cream",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff333243),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13
                                ),),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Text("79kcal",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffabacc2),
                                    fontSize: 11
                                ),),
                            ),


                          ],),
                        //Ice Cream

                        //
                      ],),),

                  ],),
                ),

                SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text("Allergens",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xff333243),
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                    ),),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                padding: const EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                    color: Color(0xff323142),
                borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xfff98e54),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text("Added to cart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w900),),
                      ],
                    ),

                    Container(
                      height: 40,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff19192d),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Text("₹ 120.7",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w900),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
