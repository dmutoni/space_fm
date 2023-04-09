import 'package:flutter/material.dart';
import 'package:intersperse/intersperse.dart';
import 'package:space_fm/values/assets/common_assets.dart';
import 'package:space_fm/values/dimens.dart';
import 'package:space_fm/values/styles.dart';
import 'package:space_fm/widgets/sf_button.dart';
import 'package:space_fm/widgets/sf_text_input.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/signup";

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.marginMedium),
      decoration: const BoxDecoration(
        gradient: SweepGradient(
          startAngle: 200.76,
          endAngle: 560.76,
          colors: [
            Colors.black,
            Colors.grey,
          ],
          stops: [0.0, 1.0],
          transform: GradientRotation(2.76 / 360),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: Dimens.marginAppBarTop,
          ),
          Center(child: Image.asset(CommonAssets.logo)),
          const SizedBox(
            height: Dimens.marginAppBarBottom,
          ),
          ...intersperse(
            const SizedBox(
              height: Dimens.marginHalfMedium,
            ),
            [
              SfTextInput(
                controller: nameController,
                hintText: 'NAME',
              ),
              SfTextInput(
                controller: emailController,
                hintText: 'EMAIL',
              ),
              SfTextInput(
                controller: passwordController,
                hintText: 'PASSWORD',
                obscureText: true,
              ),
              const SfButton(title: 'CREATE ACCOUNT'),
            ],
          ),
          const Text('Sign up with', style: Styles.forgotPasswordTextStyle),
          const SizedBox(
            height: Dimens.marginMiddle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...intersperse(
                const SizedBox(
                  width: Dimens.marginSeven,
                ),
                [
                  Image.asset(CommonAssets.email),
                  Image.asset(CommonAssets.instagram),
                  Image.asset(CommonAssets.facebook),
                  Image.asset(CommonAssets.tiktok),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
