import 'package:flutter/material.dart';
import 'package:testapp/constants/app_constants.dart';
import 'package:testapp/utils/app_assets.dart';
import 'package:testapp/utils/custom_label_text.dart';
import 'package:testapp/utils/navigate.dart';
import 'package:testapp/views/dashboard/dashboard_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.login),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage(AppAssets.image_3), fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                AppConstants.welcomeBackText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomLabelInputText(
                label: AppConstants.email,
                keyboardType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppConstants.validateEmail;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomLabelInputText(
                label: AppConstants.password,
                maxLines: 1,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                inputAction: TextInputAction.done,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppConstants.validatePassword;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green, // Text color
                    elevation: 5, // Optional: Add elevation to button
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      nextScreenReplace(context, const DashboardView());
                    }
                  },
                  child: const Text(AppConstants.login,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
