import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



class BigProductScreen extends StatefulWidget {
  const BigProductScreen({Key? key}) : super(key: key);

  @override
  State<BigProductScreen> createState() => _BigProductScreenState();
}

class _BigProductScreenState extends State<BigProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      body: Container(
        child: ListView(
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
                  Icon(Icons.arrow_back_ios,color: Color(0xff3a3a3a),),
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Image.asset("assets/images/bookmarktwo.png"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
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
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: -10,
                    shadowLightColorEmboss: Color(0xffa5b1b6),
                    shadowDarkColorEmboss: Color(0xffa5b1b6),
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(150)),
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(150.0)),
                    ),
                    child:Image.asset("assets/images/foodmix.png",width: 200,height: 200,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height:8,
                    width: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffeb6456)
                  ),),

                  Container(
                    height:8,
                    width: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffb4b4b4)
                    ),),
                  Container(
                    height:8,
                    width: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffb4b4b4)
                    ),),
                  Container(
                    height:8,
                    width: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffb4b4b4)
                    ),),




              ],),
            ),
            SizedBox(height: 30,),

            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Veggie tomato mix",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 30,fontFamily: "Raleway",fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),),
                    ),

                    SizedBox(height: 20,),
                    Text(
                      "₹ 950/-",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 30,fontFamily: "Raleway",fontWeight: FontWeight.w900, color: Color(0xffeb6456),),
                    ),
                    SizedBox(height: 20,),
                  ],)
            ),
            SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  "Delivery info",
                  style:
                  TextStyle(fontSize: 20,fontFamily: "Raleway",fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),),
                ),
                  SizedBox(height: 10,),
                Text(
                  "Delivered between monday aug and thursday 20 from 01:00 pm to 01:32 pm",
                  style:
                  TextStyle(fontSize: 15,fontFamily: "Raleway",fontWeight: FontWeight.normal, color: Color(
                      0xffa4a4a4),),
                ),
                  SizedBox(height: 30,),
                  Text(
                    "Return policy",
                    style:
                    TextStyle(fontSize: 20,fontFamily: "Raleway",fontWeight: FontWeight.w900, color: Color(0xff3a3a3a),),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact your hotline immediately.",
                    style:
                    TextStyle(fontSize: 15,fontFamily: "Raleway",fontWeight: FontWeight.normal, color: Color(
                        0xffa4a4a4),),
                  )
              ],),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xffcb4828),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                 ),
              child: Text(
                "Add to cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Raleway",
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
