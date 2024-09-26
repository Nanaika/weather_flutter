import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/dark_mode_bloc.dart';
import '../utils/shared_prefernces_util.dart';

class DarkModeButton extends StatelessWidget {
  const DarkModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        context.read<BrightnessBloc>().toggleDarkMode();
        final isDark = context.read<BrightnessBloc>().isDark;
        saveDarkMode(isDark);
      },
      icon: BlocBuilder<BrightnessBloc, Brightness>(
        builder: (BuildContext context, state) {
          return Icon(
            state == Brightness.light
                ? CupertinoIcons.moon_fill
                : CupertinoIcons.sun_max_fill,
            color: Theme.of(context).colorScheme.primary,
            size: 18,
          );
        },
      ),
    );
  }
}
