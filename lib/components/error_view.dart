import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.message,
    required this.onTap,
  });

  final String message;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Lottie.asset(
            'assets/error.json',
          ),
        ),
        Text(
          message,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          child: const Text(
            'TRY AGAIN',
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
      ],
    );
  }
}
