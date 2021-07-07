import 'package:flutter/widgets.dart';

class AppColors {
  static final pink = Color(0xFFF5487F);
  static final purple = Color(0xFF8681FC);
  static final purpleDark = Color(0xFF343090);
  static final green = Color(0xFF58B368);
  static final cyan = Color(0xFF44C2FD);
  static final cyanDark = Color(0xFF409BE0);
  static final yellow = Color(0xFFFAC736);
  static final white = Color(0xFFFFFFFF);

  static final linearGradient = LinearGradient(
      colors: [AppColors.cyan, AppColors.purpleDark],
      begin: Alignment(-2, -0.8),
      end: Alignment(0.7, 0));
}
