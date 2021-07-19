import 'package:flutter/material.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';
import 'package:journal_flutter/src/shared/theme/text_styles.dart';

class NotesCardWidget extends StatefulWidget {
  final String color;
  final String title;
  final String text;
  final String createdAt;
  final bool isFavorite;
  final bool isAttached;
  final bool isDate;

  NotesCardWidget({
    Key? key,
    required this.color,
    required this.title,
    required this.text,
    required this.isFavorite,
    required this.isAttached,
    required this.isDate,
    required this.createdAt,
  }) : super(key: key);

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
              color: widget.color == "pink"
                  ? AppColors.pink
                  : widget.color == 'green'
                      ? AppColors.green
                      : widget.color == 'purple'
                          ? AppColors.purple
                          : widget.color == 'yellow'
                              ? AppColors.yellow
                              : widget.color == 'cyan'
                                  ? AppColors.cyan
                                  : null,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(widget.title, style: TextStyles.cardTitle),
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
                widget.isDate == true
                    ? Icon(
                        Icons.date_range,
                        color: AppColors.black.withOpacity(0.54),
                      )
                    : Container(),
                widget.isFavorite == true
                    ? Icon(
                        Icons.favorite,
                        color: AppColors.black.withOpacity(0.54),
                      )
                    : Container(),
                widget.isAttached == true
                    ? Icon(
                        Icons.attach_file,
                        color: AppColors.black.withOpacity(0.54),
                      )
                    : Container(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.text,
              style: TextStyles.cardText,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Criado em: ${widget.createdAt}",
              style: TextStyles.cardCreatedAt,
            ),
          )
        ],
      ),
    );
  }
}
