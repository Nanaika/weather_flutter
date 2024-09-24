
import 'package:shared_preferences/shared_preferences.dart';

const darkModeKey = 'darkModeKey';

void saveDarkMode(bool isDark) async {
  final sp = await SharedPreferences.getInstance();
  await sp.setBool(darkModeKey, isDark);
}

Future<bool> getDarkMode() async {
  final sp = await SharedPreferences.getInstance();
  final isDark = sp.getBool(darkModeKey);
  return isDark ??  false;
}
