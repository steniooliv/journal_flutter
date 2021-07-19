import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:journal_flutter/src/pages/list_notes/widget/notes_card_widget.dart';
import 'package:journal_flutter/src/pages/list_notes/widget/seach_widget.dart';
import 'package:journal_flutter/src/pages/new_notes/new_notes_page.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';
import 'package:journal_flutter/src/shared/widgets/add_button_widget.dart';

class ListNotesPage extends StatefulWidget {
  ListNotesPage({Key? key}) : super(key: key);

  @override
  _ListNotesPageState createState() => _ListNotesPageState();
}

class _ListNotesPageState extends State<ListNotesPage> {
  final notes = [
    {
      "color": "pink",
      "title": "Não Esquecer",
      "text":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": true,
      "isAttached": true,
      "isDate": true,
      "createdAt": "18/07/2016",
    },
    {
      "color": "green",
      "title": "Reunião com os stakeholders",
      "text":
          "• Ipsum dolor sit amet, consectur. \n• Adipiscing elit, sed do eiusmod tempor incidi. \n• Ut labore et dolore magna aliqua.",
      "isFavorite": false,
      "isAttached": true,
      "isDate": false,
      "createdAt": "18/07/2016",
    },
    {
      "color": "purple",
      "title": "Lembretes para o médico",
      "text":
          "Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "isFavorite": true,
      "isAttached": true,
      "isDate": true,
      "createdAt": "18/07/2016",
    },
    {
      "color": "cyan",
      "title": "Idéias para o novo app 2022",
      "text":
          "• Ipsum dolor sit amet, consectur. \n• Adipiscing elit, sed do eiusmod tempor incidi. \n• Ut labore et dolore.",
      "isFavorite": false,
      "isAttached": false,
      "isDate": false,
      "createdAt": "18/07/2016",
    },
    {
      "color": "yellow",
      "title": "Reunião do grupo de treinamento",
      "text":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": false,
      "isAttached": false,
      "isDate": false,
      "createdAt": "18/07/2016",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/journal_logo.png",
                width: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "journal",
                style: TextStyles.journalAppBar,
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: AppColors.linearGradient,
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SearchWidget(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: RawScrollbar(
                thumbColor: Color(0xFFAFACF3),
                isAlwaysShown: true,
                thickness: 7,
                radius: Radius.circular(10),
                child: StaggeredGridView.countBuilder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  crossAxisCount: 2,
                  itemCount: notes.length,
                  itemBuilder: (BuildContext context, int index) =>
                      NotesCardWidget(
                    color: notes[index]["color"].toString(),
                    title: notes[index]["title"].toString(),
                    text: notes[index]["text"].toString(),
                    isFavorite:
                        notes[index]["isFavorite"] == true ? true : false,
                    isAttached:
                        notes[index]["isAttached"] == true ? true : false,
                    isDate: notes[index]["isDate"] == true ? true : false,
                    createdAt: notes[index]["createdAt"].toString(),
                  ),
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
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
        child: AddButtonWidget(),
      ),
    );
  }
}
