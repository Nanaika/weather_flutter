import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/bloc/dark_mode_bloc.dart';
import 'package:weather/pages/weather_page/weather_page.dart';

void main() {
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

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BrightnessBloc(),
      child: BlocBuilder<BrightnessBloc, Brightness>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: _buildTheme(state),
            home: const WeatherPage(),
          );
        },
      ),
    );
  }
}

ThemeData _buildTheme(brightness) {
  // return ThemeData(brightness: brightness, fontFamily: 'SFProText');

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    textTheme: GoogleFonts.oswaldTextTheme(),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: brightness,
    ),
  );
}
