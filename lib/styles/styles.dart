import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF2260FF);
  static const secondaryColor = Color(0xFFFFFFFF);
  static const textColor = Color(0xFF070707);
  static const hintTextColor = Color(0xFF809CFF);
  static const hintBackgroundColor = Color(0xFFECF1FF);
  static const buttonBackgroundColor = Color(0xFFCAD6FF);
}

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
      fontSize: 48.0,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w100,
      fontFamily: 'LeagueSpartan');
  static final TextStyle h2 =
      h1.copyWith(fontSize: 24, fontWeight: FontWeight.w600);
  static final TextStyle h3 = h2.copyWith(
      fontSize: 20.0, color: AppColors.textColor, fontWeight: FontWeight.w500);
  static const TextStyle h4 = TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: 'LeagueSpartan');
}

class AppSpacing {
  static const SizedBox extraSmall = SizedBox(height: 4.0);
  static const SizedBox small = SizedBox(height: 8.0);
  static const SizedBox medium = SizedBox(height: 15.0);
  static const SizedBox large = SizedBox(height: 30.0);
  static const SizedBox extraLarge = SizedBox(height: 40.0);
  static const SizedBox horizontalSmall = SizedBox(width: 8.0);
  static const SizedBox horizontalMedium = SizedBox(width: 15.0);
}

class AppButtons {
  static Widget largeButton({
    required VoidCallback onPressed,
    required Widget child,
    Color? backgroundColor,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          minimumSize: Size(width ?? 275, height ?? 40),
          padding: padding ?? EdgeInsets.symmetric(vertical: 13.0)),
      child: child,
    );
  }
}
