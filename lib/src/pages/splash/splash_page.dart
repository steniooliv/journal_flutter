import 'package:animated_card/animated_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_flutter/src/pages/list_notes/list_notes_page.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2)).then(
        (value) => Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (BuildContext context) => ListNotesPage(),
          ),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.linearGradient,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.top,
              duration: Duration(seconds: 1),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: (MediaQuery.of(context).size.height / 2) -
                        (MediaQuery.of(context).size.height * 0.12),
                    child: Hero(
                      tag: "notes_logo",
                      child: Image.asset(
                        "assets/images/journal_logo.png",
                        width: 42,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Hero(
                          tag: "journal",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "journal",
                              style: TextStyles.journalTitle,
                            ),
                          ),
                        ),
                        Text(
                          "YOUR ACADEMY'S BEST FRIEND",
                          style: TextStyles.journalSubTitle,
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedCard(
              direction: AnimatedCardDirection.bottom,
              duration: Duration(seconds: 1),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "powered by",
                      style: TextStyles.journalPowered,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Image.asset(
                      "assets/images/raro_logo.png",
                      width: 100,
                    ),
                    SizedBox(height: 40.0)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
