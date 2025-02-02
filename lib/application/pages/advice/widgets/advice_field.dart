import 'package:clean_bloc/application/core/constants/border_radius.dart';
import 'package:clean_bloc/application/core/extentions/extentions.dart';
import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {
  final String advice;
  const AdviceField({super.key, required this.advice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadiusC.radius14,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusC.radius14,
            color: context.exColorTheme.onPrimary,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 20),
            child: Text(
              advice,
              style: context.exTextTheme.displayLarge!.copyWith(height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
