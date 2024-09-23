import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';


class BrightnessBloc extends Cubit<Brightness> {
  BrightnessBloc() : super(Brightness.light);

  bool isDark = false;

  void toggleDarkMode() {
      isDark = !isDark;
      isDark ? emit(Brightness.dark) : emit(Brightness.light);
  }

}