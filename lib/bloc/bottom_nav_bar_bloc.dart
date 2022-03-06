import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarCubit extends Cubit<int> {
  //instantiation of the BottomNavBarCubit class
  BottomNavBarCubit() : super(0);
  //update the the index function to change the index onTap
  //emit() sets a new state
  void updateIndex(int index) => emit(index);

  //functions to navigate to various pages
  void navHome() => emit(0);
  void navFab() => emit(1);
  void navButton() => emit(2);
  void navTextButton() => emit(3);
}
