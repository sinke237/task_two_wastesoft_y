import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

int index = 0;
Widget curvedNavBar(int currentIndex, Function(int) onTap) {
  return CurvedNavigationBar(
    height: 18.0,
    index: currentIndex,
    onTap: onTap(index),
    backgroundColor: const Color(0xff064D86),
    //Todo: add the items of the navbar here.
    //Todo: make sure to implement the states
    items: const [
      Icon(Icons.home),
      Icon(Icons.add),
      Icon(Icons.radio_button_checked_outlined),
      Icon(Icons.text_fields_sharp),
    ],
  );
}
