import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_flutter/src/shared/theme/app_colors.dart';

class TextStyles {
  static final journalTitle = GoogleFonts.montserrat(
    fontSize: 72,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.05,
    color: AppColors.white,
  );
  static final journalAppBar = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.05,
    color: AppColors.white,
  );
  static final journalTitleHome = GoogleFonts.montserrat(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.05,
    color: AppColors.white,
  );
  static final journalSubTitle = GoogleFonts.montserrat(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.13,
    color: AppColors.white,
  );
  static final journalPowered = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.4,
    color: AppColors.white,
  );
  static final homePurpleText = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.purple,
  );
  static final homeCyanText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.cyan,
  );
  static final inputText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(0.54),
  );
  static final inputTextBold = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.black.withOpacity(0.54),
  );
  static final cardTitle = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static final cardText = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(0.54),
  );
  static final cardCreatedAt = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: AppColors.black.withOpacity(0.54),
    fontStyle: FontStyle.italic,
  );
}
