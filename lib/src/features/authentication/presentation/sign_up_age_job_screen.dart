import 'package:dating_app/src/features/authentication/domain/user_account.dart';
import 'package:dating_app/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/banner_widget.dart';
import '../../../common_widgets/custom_button_widget.dart';
import '../../../common_widgets/custom_text_field_widget.dart';
import '../../../theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  final String fullname;
  final String email;
  final String password;

  const SignUpAgeJobScreen({
    required this.fullname,
    required this.email,
    required this.password,
    super.key,
  });

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    jobController.clear();
    ageController.clear();
    super.dispose();
  }

  String? validationInput() {
    if (jobController.text.isEmpty || ageController.text.isEmpty) {
      return "Occupation or Age can't be empty";
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
                labelName: "Occupation",
                hintText: "Write your occupation",
                controller: jobController,
              ),
              CustomTextFieldWidget(
                labelName: "Age",
                hintText: "Write your age",
                controller: ageController,
              ),
              const SizedBox(height: 117.0),
              CustomButtonWidget(
                title: "Continue Sign Up",
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
                  UserAccount userAccount = UserAccount(
                    fullname: widget.fullname,
                    email: widget.email,
                    password: widget.password,
                    occupation: jobController.text,
                    age: ageController.text,
                  );
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                    arguments: userAccount,
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
