import 'package:flutter/material.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';

class NotesCardWidget extends StatefulWidget {
  NotesCardWidget({Key? key}) : super(key: key);

  @override
  _NotesCardWidgetState createState() => _NotesCardWidgetState();
}

class _NotesCardWidgetState extends State<NotesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gray,
        boxShadow: [
          BoxShadow(
              color: AppColors.black.withOpacity(0.12),
              offset: Offset(0, 2),
              spreadRadius: 0,
              blurRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.pink,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Notas", style: TextStyles.cardTitle),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(
                  Icons.date_range,
                  color: AppColors.black.withOpacity(0.54),
                ),
                Icon(
                  Icons.favorite,
                  color: AppColors.black.withOpacity(0.54),
                ),
                Icon(
                  Icons.attach_file,
                  color: AppColors.black.withOpacity(0.54),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "asdfasd",
              style: TextStyles.cardText,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Criado em: 16/07/2021",
              style: TextStyles.cardCreatedAt,
            ),
          )
        ],
      ),
    );
  }
}
