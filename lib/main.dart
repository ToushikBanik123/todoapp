import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:todoapp/Screens/Home_Screens.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Provider/App_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>todoProvider()),

      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
    ),
    );
  }
}





