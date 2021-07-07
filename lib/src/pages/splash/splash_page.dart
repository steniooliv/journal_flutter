import 'package:flutter/material.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.purpleDark,
          gradient: AppColors.linearGradient,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.18),
              child: Image.asset(
                'assets/images/journal_logo.png',
                width: 64,
              ),
            ),
            Center(
              child: Text(
                "journal",
                style: TextStyles.journalTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
