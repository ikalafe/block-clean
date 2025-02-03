import 'package:clean_bloc/application/core/constants/border_radius.dart';
import 'package:clean_bloc/application/core/extentions/extentions.dart';
import 'package:clean_bloc/application/pages/advice/bloc/advice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () =>
          BlocProvider.of<AdviceBloc>(context).add(AdviceRequestedEvent()),
      child: Material(
        borderRadius: BorderRadiusC.radius14,
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            color: context.exColorTheme.secondary,
            borderRadius: BorderRadiusC.radius14,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            child: Text(
              'Get Advice',
              style: context.exTextTheme.displayLarge,
            ),
          ),
        ),
      ),
    );
  }
}
