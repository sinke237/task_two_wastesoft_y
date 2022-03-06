import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const DefaultAppBar({required this.globalKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff064D86), //blue color #064D86,
        boxShadow: const [
          BoxShadow(blurRadius: 20.0),
        ],
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 25, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    globalKey.currentState!.openEndDrawer();
                  },
                ),
                const Text(
                  "YISAFA WASTESOFT VOLUNTEERS",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Comfortaa",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Text(
              "Task_two",
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}

class EditedAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const EditedAppBar({required this.globalKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff82DAA2),
        boxShadow: const [
          BoxShadow(blurRadius: 20.0),
        ],
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 25, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    globalKey.currentState!.openEndDrawer();
                  },
                ),
                const Text(
                  "YISAFA WASTESOFT VOLUNTEERS",
                  style: TextStyle(
                    fontFamily: "Comfortaa",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Text(
              "Task_two",
              style: TextStyle(
                fontFamily: "AkayaTelivigala",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
