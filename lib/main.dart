import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/dark_mode_bloc.dart';
import 'package:weather/pages/weather_page/weather_page.dart';
import 'package:weather/theme/theme_utils.dart';
import 'package:weather/utils/shared_prefernces_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color.fromARGB(1, 1, 1, 1),
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  final isDark = await getDarkMode();

  runApp(MyApp(
    isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isDark});

  final bool isDark;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BrightnessBloc(isDark: isDark),
      child: BlocBuilder<BrightnessBloc, Brightness>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: buildTheme(state),
            home: const WeatherPage(),
          );
        },
      ),
    );
  }
}





