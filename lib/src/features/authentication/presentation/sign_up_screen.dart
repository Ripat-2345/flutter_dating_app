import 'package:dating_app/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/banner_widget.dart';
import '../../../common_widgets/custom_button_widget.dart';
import '../../../common_widgets/custom_text_button_widget.dart';
import '../../../common_widgets/custom_text_field_widget.dart';
import './sign_up_age_job_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }

  String? validationInput() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return "Name or Email or Password cang't be empty";
    }

    if (nameController.text.length < 4 ||
        emailController.text.length < 4 ||
        passwordController.text.length < 4) {
      return 'Too short, minimum 4 characters';
    }

    if (!emailController.text.contains('@')) {
      return 'Email not valid without @';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: AppPadding.p50,
          left: AppPadding.p24,
          right: AppPadding.p24,
          bottom: AppPadding.p12,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BannerWidget(),
              CustomTextFieldWidget(
                labelName: "Complete Name",
                hintText: "Write your name",
                controller: nameController,
              ),
              CustomTextFieldWidget(
                labelName: "Email Address",
                hintText: "Write your mail address",
                controller: emailController,
              ),
              CustomTextFieldWidget(
                labelName: "Password",
                hintText: "Write your security",
                controller: passwordController,
                isObsecure: true,
              ),
              const SizedBox(height: AppSize.s16),
              CustomButtonWidget(
                title: "Get Started",
                onTap: () {
                  final message = validationInput();
                  if (message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpAgeJobScreen(
                          fullname: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSize.s20),
              CustomTextButtonWidget(
                title: "Sign In to My Account",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
