import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/utils/system_ui_style_util.dart';

class BrightnessBloc extends Cubit<Brightness> {
  BrightnessBloc({required this.isDark}) : super(Brightness.light) {
    if(isDark) {
      setDarkSystemUIStyle();
      emit(Brightness.dark);
    } else {
      setLightSystemUIStyle();
      emit(Brightness.light);
    }
  }

  bool isDark;

  void toggleDarkMode() {
    isDark = !isDark;
    if(isDark) {
      setDarkSystemUIStyle();
      emit(Brightness.dark);
    } else {
      setLightSystemUIStyle();
      emit(Brightness.light);
    }
    // isDark ? emit(Brightness.dark) : emit(Brightness.light);
  }
}
