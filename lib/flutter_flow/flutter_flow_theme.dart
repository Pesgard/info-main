// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color customColor1;
  late Color customColor2;
  late Color customColor3;
  late Color customColor4;
  late Color customColor5;
  late Color customColor6;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else if (width < 1200) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFA681F2);
  late Color secondaryColor = const Color(0xFF8E94F4);
  late Color tertiaryColor = const Color(0xFF89B0F0);
  late Color alternate = const Color(0xFFFFFFFF);
  late Color primaryBackground = const Color(0xFF28313F);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF9195A4);
  late Color secondaryText = const Color(0xFFFFFFFF);

  late Color customColor1 = Color(0xFFBA67F7);
  late Color customColor2 = Color(0xFF719FF8);
  late Color customColor3 = Color(0xFF51627F);
  late Color customColor4 = Color(0xFFC8B6FA);
  late Color customColor5 = Color(0xFFA7C4F8);
  late Color customColor6 = Color(0xFF2C313E);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Atten Round New';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 22,
      );
  String get title2Family => 'Atten Round New';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  String get title3Family => 'Atten Round New';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  String get subtitle1Family => 'Atten Round New';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get subtitle2Family => 'Atten Round New';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get bodyText1Family => 'Atten Round New';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );
  String get bodyText2Family => 'Atten Round New';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Atten Round New';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 55,
      );
  String get title2Family => 'Atten Round New';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 30,
      );
  String get title3Family => 'Atten Round New';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 26,
      );
  String get subtitle1Family => 'Atten Round New';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get subtitle2Family => 'Atten Round New';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  String get bodyText1Family => 'Atten Round New';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get bodyText2Family => 'Atten Round New';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Atten Round New';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 85,
      );
  String get title2Family => 'Atten Round New';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 40,
      );
  String get title3Family => 'Atten Round New';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 36,
      );
  String get subtitle1Family => 'Atten Round New';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 28,
      );
  String get subtitle2Family => 'Atten Round New';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  String get bodyText1Family => 'Atten Round New';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get bodyText2Family => 'Atten Round New';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Atten Round New',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
