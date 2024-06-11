import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ra/models/NavItem.dart';
import 'package:ra/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: ThemeData(
          // Set the default background color to white
          scaffoldBackgroundColor: Colors.white,
          // Apply a consistent style to app bars
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
