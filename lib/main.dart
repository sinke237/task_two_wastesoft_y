import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_2_thurs_3rd_mar22/bloc/bottom_nav_bar_bloc.dart';
import 'package:task_2_thurs_3rd_mar22/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //building our app with BlocProvider
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: const Color(0xff0D1117),
          primarySwatch: Colors.blue, //Color(0xff82DAA2),
        ),
        home: const Homepage(),
      ),
    );
  }
}
