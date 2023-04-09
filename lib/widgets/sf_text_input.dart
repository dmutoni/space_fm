import 'package:flutter/material.dart';
import 'package:space_fm/values/colors.dart';
import 'package:space_fm/values/dimens.dart';
import 'package:space_fm/values/durations.dart';
import 'package:space_fm/values/styles.dart';

class SfTextInput extends StatefulWidget {
  final TextEditingController controller;
  final BoxConstraints? constraints;
  final Color? backGroundColor;
  final Color borderColor;
  final BorderStyle borderStyle;
  final TextStyle? hintTextStyle;
  final EdgeInsets? padding;
  final String hintText;
  final BorderRadius? borderRadius;
  final TextInputType keyBoardType;
  final bool obscureText;

  const SfTextInput({
    super.key,
    required this.controller,
    this.constraints = const BoxConstraints(
      maxHeight: Dimens.heightSixty,
      maxWidth: Dimens.widthForty,
    ),
    this.backGroundColor = AppColors.sfWhite,
    this.borderColor = AppColors.sfBlack,
    this.borderStyle = BorderStyle.solid,
    this.padding = const EdgeInsets.only(
      left: Dimens.marginTen,
      right: Dimens.marginMedium,
      top: Dimens.marginTen,
      bottom: Dimens.marginTen,
    ),
    required this.hintText,
    this.keyBoardType = TextInputType.text,
    this.hintTextStyle = Styles.hintTextStyle,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(Dimens.radiusDefaultHalf),
    ),
    this.obscureText = false,
  });

  @override
  State<SfTextInput> createState() => _SfTextInputState();
}

class _SfTextInputState extends State<SfTextInput> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.normal,
      constraints: widget.constraints,
      decoration: BoxDecoration(
        color: widget.backGroundColor,
        borderRadius: widget.borderRadius,
        border: Border.all(
          color: AppColors.sfBlack,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      padding: widget.padding,
      child: TextField(
        obscureText: widget.obscureText,
        keyboardType: widget.keyBoardType,
        controller: widget.controller,
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hintText,
          hintStyle: widget.hintTextStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
