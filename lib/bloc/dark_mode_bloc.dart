import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class BrightnessBloc extends Cubit<Brightness> {
  BrightnessBloc({required this.isDark}) : super(Brightness.light) {
    isDark ? emit(Brightness.dark) : emit(Brightness.light);
  }

  bool isDark;

  void toggleDarkMode() {
    isDark = !isDark;
    isDark ? emit(Brightness.dark) : emit(Brightness.light);
  }
}
