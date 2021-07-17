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
              child: Scrollbar(
                isAlwaysShown: true,
                showTrackOnHover: true,
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  primary: false,
                  crossAxisCount: 4,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) =>
                      NotesCardWidget(),
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
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
