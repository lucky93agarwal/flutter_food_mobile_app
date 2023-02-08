import 'package:ecommerce_flutter/screen/home.dart';
import 'package:ecommerce_flutter/screen/second_home.dart';
import 'package:ecommerce_flutter/utils/next_screen.dart';
import 'package:flutter/material.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeb6456),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                margin: const EdgeInsets.only(bottom: 70),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffeb6456),
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                        color: Color(0xffeb6456),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 75.0,
                        spreadRadius: 1.0)
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bgimgnew.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null /* add child content here */,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset("assets/images/questioniconne.png"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Food for\nEveryone",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              height: 0.9,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w900,
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: (){
                      nextScreen(context, SecondHomeScreen());
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              boxShadow: _isPressed
                                  ? null
                                  : [
                                      BoxShadow(
                                        color: Colors.blueGrey.shade200,
                                        offset: Offset(4.0, 4.0),
                                        blurRadius: 15.0,
                                        spreadRadius: 1.0,
                                      ),
                                      BoxShadow(
                                          color: Color(0xffff1800),
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 75.0,
                                          spreadRadius: 1.0)
                                    ]),
                          child: Text(
                            "Get started",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffeb6456),
                              fontFamily: "Raleway",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
