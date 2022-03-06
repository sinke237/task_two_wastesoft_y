import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:task_2_thurs_3rd_mar22/bloc/bottom_nav_bar_bloc.dart';
import 'package:task_2_thurs_3rd_mar22/custom_widgets/button.dart';
import 'package:task_2_thurs_3rd_mar22/custom_widgets/custom_appbars.dart';
import 'package:task_2_thurs_3rd_mar22/custom_widgets/drawer_widget.dart';
import 'package:task_2_thurs_3rd_mar22/custom_widgets/fab.dart';
import 'package:task_2_thurs_3rd_mar22/custom_widgets/nav_bar_widget.dart';
import 'package:task_2_thurs_3rd_mar22/custom_widgets/text_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //we define a key to let the scaffold to access our custom appbar
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int i = 0;
  //here is the list of pages in our project
  final _pageNavigation = [
    const Homepage(),
    fab(),
    button(),
    textButton(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, int>(
      builder: (context, state) {
        return Scaffold(
          key: _key,
          drawer: drawerWidget(),
          endDrawer: drawerWidget(),
          //appbar
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            //Todo: make sure you can toggle between the appbars
            child: DefaultAppBar(
              //this is to let the custom appbar to be able to access
              //the drawer. this is why we define the global key
              //as you have come across it.
              globalKey: _key,
            ),
          ),
          //our floating action button counters numbers upwards
          //Todo: create a custom widget for bottomNavBar
          //Todo: and call it below, instead of having it here

          //body
          body: _pageNavigation.elementAt(state),
          bottomNavigationBar: curvedNavBar(
            //this updates and sets the current index
            context.read<BottomNavBarCubit>().state,
            //this is the onTap function to nav to various
            //pages in the nav bar list.
            _changeNavBar,
          ),
        );
      },
    );
  }

  void _changeNavBar(int index) {
    context.read<BottomNavBarCubit>().updateIndex(index);
  }

  /*_buildBody(int index) {
    return _pageNavigation.elementAt(index);
  }*/
}
