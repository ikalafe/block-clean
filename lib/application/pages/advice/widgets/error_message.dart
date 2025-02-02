import 'package:clean_bloc/application/core/extentions/extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Icon(
          CupertinoIcons.exclamationmark_triangle_fill,
          size: 40,
          color: Colors.deepOrange,
        ),
        Text(
          message,
          style: context.exTextTheme.headlineMedium,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
