import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vpn_basic_project/main.dart';
import 'package:vpn_basic_project/screens/home_screen.dart';
class WelcomeScreenState extends StatefulWidget {
  const WelcomeScreenState({super.key});
  @override
  State<WelcomeScreenState> createState() => __WelcomeScreenStateState();
}

class __WelcomeScreenStateState extends State<WelcomeScreenState> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3500), () {
      // To move to homescreen by GetX framework of FLutter
      Get.off(() => HomeScreen());
      // To move to homescreen after splash/welcome screen
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      });
  }
  @override
  Widget build(BuildContext context) {
    mq =MediaQuery.of(context).size;
    return Scaffold(body: Stack(children: [
    
      Positioned(
        left: mq.width *.3,
        top: mq.height *.3,
        width: mq.width *.4,
        child: Image.asset('assets/images/vpn.png')),
        Positioned(
          bottom: mq.height*.15,
          width: mq.width,
          
          child: Text('Made by Team_DuZZ with ❤️' ,textAlign: TextAlign.center,style: TextStyle(color: Colors.black87,letterSpacing: 1),))
        ],
        ),
        );
         
  }
}