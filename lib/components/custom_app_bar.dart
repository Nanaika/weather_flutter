import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/bloc/dark_mode_bloc.dart';
import 'package:weather/utils/shared_prefernces_util.dart';

import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
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
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


