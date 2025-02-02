import 'package:clean_bloc/application/core/extentions/extentions.dart';
import 'package:clean_bloc/application/core/services/theme_service.dart';
import 'package:clean_bloc/application/pages/advice/widgets/advice_field.dart';
import 'package:clean_bloc/application/pages/advice/widgets/custom_button.dart';
import 'package:clean_bloc/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              child: ErrorMessage(message: 'Oops Something gone wrong!'),
              // AdviceField(advice: 'Example advice - Your day will be good')
              /* SpinKitFadingCircle(
                color: context.exColorTheme.secondary,
                ),*/
              /* Text(
                'Your Advice is waiting for you!',
                style: context.exTextTheme.displayLarge,
                ), */
            )),
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
