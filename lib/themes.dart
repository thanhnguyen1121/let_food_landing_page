import 'package:flutter/material.dart';
import 'package:flutter_web/gen/fonts.gen.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: const Color(0xffFFCB45),
          primaryContainer: const Color(0xffFFF9EA),
          secondary: const Color(0xff1D1D1D).withOpacity(0.7),
          secondaryContainer: const Color(0xff1D1D1D),
          tertiary: const Color(0xffF28B42),
          tertiaryContainer: const Color(0xffF1F1F1),
        ),
    textTheme: ThemeData.light().textTheme.copyWith(
          headline3: ThemeData.light().textTheme.headline3?.copyWith(
                fontSize: 48,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
          headline4: ThemeData.light().textTheme.headline4?.copyWith(
                fontSize: 32,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
          headline5: ThemeData.light().textTheme.headline5?.copyWith(
                fontSize: 24,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
          headline6: ThemeData.light().textTheme.headline6?.copyWith(
                fontSize: 20,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
          subtitle1: ThemeData.light().textTheme.subtitle1?.copyWith(
                fontSize: 28,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
          subtitle2: ThemeData.light().textTheme.subtitle2?.copyWith(
                fontSize: 22,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
          bodyText1: ThemeData.light().textTheme.bodyText1?.copyWith(
                fontSize: 18,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
          button: ThemeData.light().textTheme.button?.copyWith(
                fontSize: 14,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
        ),
  );
}

ThemeData dark(BuildContext context) {
  return ThemeData.dark().copyWith(
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: const Color(0xffFFCB45),
          primaryContainer: const Color(0xffFFF9EA),
          secondary: const Color(0xff1D1D1D).withOpacity(0.7),
          secondaryContainer: const Color(0xff1D1D1D),
          tertiary: const Color(0xffF28B42),
          tertiaryContainer: const Color(0xffF1F1F1),
        ),
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline3: ThemeData.dark().textTheme.headline3?.copyWith(
                fontSize: 48,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
          headline4: ThemeData.dark().textTheme.headline4?.copyWith(
                fontSize: 32,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
          headline5: ThemeData.light().textTheme.headline5?.copyWith(
                fontSize: 24,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
          headline6: ThemeData.dark().textTheme.headline6?.copyWith(
                fontSize: 20,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
          subtitle1: ThemeData.dark().textTheme.subtitle1?.copyWith(
                fontSize: 28,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
          subtitle2: ThemeData.dark().textTheme.subtitle2?.copyWith(
                fontSize: 22,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
          bodyText1: ThemeData.dark().textTheme.bodyText1?.copyWith(
                fontSize: 18,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
          button: ThemeData.dark().textTheme.button?.copyWith(
                fontSize: 14,
                fontFamily: FontFamily.readexPro,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
        ),
  );
}
