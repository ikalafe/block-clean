import 'package:clean_bloc/application/core/extentions/extentions.dart';
import 'package:clean_bloc/application/core/services/theme_service.dart';
import 'package:clean_bloc/application/pages/advice/bloc/advice_bloc.dart';
import 'package:clean_bloc/application/pages/advice/widgets/custom_button.dart';
import 'package:clean_bloc/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'widgets/advice_field.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdviceBloc(),
      child: AdvicePage(),
    );
  }
}

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advicer', style: context.exTextTheme.displayLarge),
        centerTitle: true,
        actions: [
          Switch(
            splashRadius: 10,
            autofocus: true,
            trackOutlineWidth: WidgetStatePropertyAll(1),
            trackOutlineColor: WidgetStatePropertyAll(
              Provider.of<ThemeService>(context).isDarkModeOn
                  ? Colors.indigoAccent
                  : Colors.grey.shade900,
            ),
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: BlocBuilder<AdviceBloc, AdviceState>(
                  builder: (context, state) {
                    if (state is AdviceInitial) {
                      return Text(
                        'Your Advice is waiting for you!',
                        style: context.exTextTheme.displayLarge,
                      );
                    } else if (state is AdviceStateLoading) {
                      return SpinKitFadingCircle(
                        color: context.exColorTheme.secondary,
                      );
                    } else if (state is AdviceStateLoaded) {
                      return AdviceField(advice: state.advice);
                    } else if (state is AdviceStateError) {
                      return ErrorMessage(message: state.message);
                    } else {
                      return SizedBox();
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Center(child: CustomButton()),
            ),
          ],
        ),
      ),
    );
  }
}
