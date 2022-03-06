import 'package:flutter/material.dart';

import 'list_tile_widget.dart';

drawerWidget() {
  return Drawer(
    elevation: 0.0,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          curve: Curves.bounceInOut,
          decoration: const BoxDecoration(
            color: Color(0xff064D86),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    maxRadius: 16.0,
                    backgroundImage: AssetImage("assets/images/yisafa.jpg"),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "YISAFA WASTESOFT VOLUNTEERS",
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Comfortaa",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const Text(
                "Task_two Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "AkayaTelivigala",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        listTileWidget(
          const Icon(Icons.home, size: 30.0),
          const Text(
            "Homepage",
            style: TextStyle(fontFamily: "Mirza", fontSize: 22),
          ),
        ),
        listTileWidget(
          const Icon(Icons.add, size: 30.0),
          const Text(
            "FAB",
            style: TextStyle(fontFamily: "Mirza", fontSize: 22),
          ),
        ),
        listTileWidget(
          const Icon(Icons.radio_button_checked_outlined, size: 30.0),
          const Text(
            "Button",
            style: TextStyle(fontFamily: "Mirza", fontSize: 22),
          ),
        ),
        listTileWidget(
          const Icon(Icons.text_fields_sharp, size: 30.0),
          const Text(
            "TextButton",
            style: TextStyle(fontFamily: "Mirza", fontSize: 22),
          ),
        )
      ],
    ),
  );
}
