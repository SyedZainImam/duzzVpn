import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vpn_basic_project/screens/welcome_screen.dart';



late Size mq;

void main() {
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).then((value) => null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: 'DuzzVpn',
      home: WelcomeScreenState(),
      theme: ThemeData(appBarTheme: AppBarTheme(centerTitle: true,elevation: 3)),
      debugShowCheckedModeBanner: false,
    );
  }
}
