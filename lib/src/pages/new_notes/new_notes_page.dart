import 'package:flutter/material.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';

class NewNotesPage extends StatefulWidget {
  NewNotesPage({Key? key}) : super(key: key);

  @override
  _NewNotesPageState createState() => _NewNotesPageState();
}

class _NewNotesPageState extends State<NewNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/journal_logo_blue.png",
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/images/journal_blue.png",
              width: 100,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              child: Column(
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            hintText: 'Título',
                            hintStyle: TextStyles.inputTextBold,
                          ),
                          style: TextStyles.inputTextBold,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<DropdownMenuItem>(
                          elevation: 0,
                          underline: Container(),
                          items: [
                            DropdownMenuItem(
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                    color: AppColors.pink,
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: 'Digite aqui...',
                      hintStyle: TextStyles.inputText,
                    ),
                    minLines: null,
                    maxLines: null,
                    style: TextStyles.inputText,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 0.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.date_range,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
