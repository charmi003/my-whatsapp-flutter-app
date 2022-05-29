import 'package:flutter/material.dart';
import 'screens/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Color(0xff075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff075E54), //? equivalent to primarySwatch
          secondary: Color(0xff25D366)
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white
        ),
        textTheme: const TextTheme(
          headline6:TextStyle(color:Colors.white,fontSize: 16.0),
          bodyText2: TextStyle(color:Colors.black),
          button: TextStyle(color:Colors.white)
        ),
        bottomAppBarColor: Colors.white
      ),
      home:HomePage()
    );
  }
}