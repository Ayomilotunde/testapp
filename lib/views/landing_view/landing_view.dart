import 'package:flutter/material.dart';
import 'package:testapp/constants/app_constants.dart';
import 'package:testapp/utils/app_assets.dart';
import 'package:testapp/utils/navigate.dart';
import 'package:testapp/views/auth/login.dart';
import 'package:testapp/views/auth/sign_up.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppAssets.image_1,
              height: 200,
            ),
            const SizedBox(
              height: 200,
            ),
            const Text(
              AppConstants.welcomeText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  nextScreen(context, const LoginView());
                },
                child: const Text(AppConstants.login,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black))),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  nextScreen(context, const SignUpView());
                },
                child: const Text(AppConstants.signUp,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
