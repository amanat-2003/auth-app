import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'login_email_password_screen.dart';
import 'phone_screen.dart';
import 'signup_email_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordSignup.routeName);
              },
              text: 'Email/Password Sign Up',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
              },
              text: 'Email/Password Login',
            ),
            CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, PhoneScreen.routeName);
                },
                text: 'Phone Sign In'),
            CustomButton(
              onTap: () {},
              text: 'Google Sign In',
            ),
            CustomButton(
              onTap: () {},
              text: 'Facebook Sign In',
            ),
            CustomButton(
              onTap: () {},
              text: 'Anonymous Sign In',
            ),
          ],
        ),
      ),
    );
  }
}
