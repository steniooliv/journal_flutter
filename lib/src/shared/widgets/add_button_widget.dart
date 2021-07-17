import 'package:flutter/material.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
