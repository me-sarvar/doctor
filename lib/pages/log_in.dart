import 'package:doctor/styles/styles.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _isObscured = true; // Controls the visibility of the password text

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.primaryColor,
            size: 26.0,
          ),
        ),
        title: Text(
          'Log In',
          style: AppTextStyles.h2,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.9,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome',
                  style: AppTextStyles.h2,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: AppTextStyles.h4.copyWith(
                    color: AppColors.textColor, fontWeight: FontWeight.w300),
              ),
              AppSpacing.large,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email or Mobile Number',
                  style: AppTextStyles.h3,
                ),
              ),
              AppSpacing.extraSmall,
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: AppColors.hintBackgroundColor,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
                    hintText: 'example@mail.com',
                    hintStyle: AppTextStyles.h3
                        .copyWith(color: AppColors.hintTextColor),
                  ),
                ),
              ),
              AppSpacing.medium,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: AppTextStyles.h3,
                ),
              ),
              AppSpacing.extraSmall,
              Container(
                height: 60.0, // Set a fixed height for consistency
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: AppColors.hintBackgroundColor,
                ),
                child: TextField(
                  obscureText: _isObscured, // Toggle password visibility
                  textAlignVertical: TextAlignVertical
                      .center, // Vertically center the input text
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 20.0), // Adjusted vertical padding
                    hintText: 'password',
                    hintStyle: AppTextStyles.h3
                        .copyWith(color: AppColors.hintTextColor),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured; // Toggle visibility
                        });
                      },
                      icon: Icon(
                        _isObscured ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: AppTextStyles.h4
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ),
              ),
              AppSpacing.large,
              AppButtons.largeButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: AppTextStyles.h2
                      .copyWith(color: AppColors.secondaryColor),
                ),
              ),
              AppSpacing.medium,
              Text(
                'or log in with',
                style: AppTextStyles.h4.copyWith(
                    color: AppColors.textColor, fontWeight: FontWeight.w300),
              ),
              AppSpacing.medium,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: AppColors.buttonBackgroundColor,
                      border:
                          Border.all(color: AppColors.buttonBackgroundColor),
                    ),
                    child: Image.asset('assets/icons/google.png'),
                  ),
                  AppSpacing.horizontalSmall,
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      color: AppColors.buttonBackgroundColor,
                      border:
                          Border.all(color: AppColors.buttonBackgroundColor),
                    ),
                    child: Image.asset('assets/icons/facebook.png'),
                  ),
                  AppSpacing.horizontalSmall,
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      color: AppColors.buttonBackgroundColor,
                      border:
                          Border.all(color: AppColors.buttonBackgroundColor),
                    ),
                    child: Image.asset('assets/icons/apple.png'),
                  ),
                ],
              ),
              AppSpacing.medium,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextStyles.h4.copyWith(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: AppColors.primaryColor,
                        padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Leag'
                              'ueSpartan'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
