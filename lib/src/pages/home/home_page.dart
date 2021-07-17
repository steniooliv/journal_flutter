import 'package:animated_card/animated_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_flutter/src/pages/new_notes/new_notes_page.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            top: true,
            child: Image.asset(
              "assets/images/empty_notes_background.png",
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: (MediaQuery.of(context).size.width / 2) -
                (MediaQuery.of(context).size.width * 0.15),
            child: AnimatedCard(
              direction: AnimatedCardDirection.top,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/hat.png",
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(Alignment.center.x, -0.33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Hero(
                  tag: "notes_logo",
                  child: Image.asset(
                    "assets/images/journal_logo.png",
                    width: 33,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Hero(
                  tag: "journal",
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "journal",
                      style: TextStyles.journalTitleHome,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Não importa onde você\nesteja! Guarde suas ideias pra depois ;)",
                        style: TextStyles.homePurpleText,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Comece agora a criar as suas notas!",
                        style: TextStyles.homeCyanText,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (BuildContext context) => NewNotesPage(),
          ));
        },
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            gradient: AppColors.linearGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0.0, 1.0),
                blurRadius: 18.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0.0, 6.0),
                blurRadius: 10.0,
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0.0, 3),
                  blurRadius: 5.0,
                  spreadRadius: -1.0),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
