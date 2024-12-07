import 'package:doctor/styles/styles.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      // Check if the widget is still mounted before using the context
      if (Navigator.of(context).context.mounted) {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: screenWidth * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/main_icon.png'),
                AppSpacing.large,
                Text(
                  'Skin \nFirst',
                  style: AppTextStyles.h1
                      .copyWith(color: Colors.white, height: 1.0),
                ),
                AppSpacing.medium,
                Text(
                  'Dermatology Center',
                  style: AppTextStyles.h4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
