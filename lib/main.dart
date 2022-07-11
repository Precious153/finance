import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';


void main() {
  runApp ( MyApp());
      // DevicePreview(
      //     enabled: true,
      //     builder: (context)


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      //
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        'OnBoardingScreen': (context) => OnBoardingScreen(),
      },

    );
  }
}

