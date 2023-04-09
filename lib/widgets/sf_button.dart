import 'package:flutter/material.dart';
import 'package:space_fm/values/colors.dart';
import 'package:space_fm/values/dimens.dart';
import 'package:space_fm/values/durations.dart';
import 'package:space_fm/values/styles.dart';
import 'package:space_fm/widgets/common/sf_protected_inkwell.dart';

class SfButton extends StatelessWidget {
  final String title;
  final EdgeInsets? verticalPadding;
  final Color? backgroundColor;
  final TextStyle? buttonTextStyle;
  final VoidCallback? onPressed;

  const SfButton({
    super.key,
    required this.title,
    this.verticalPadding =
        const EdgeInsets.symmetric(vertical: Dimens.marginDefault),
    this.backgroundColor = AppColors.sfBlack,
    this.buttonTextStyle = Styles.buttonTextStyle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radiusMedium),
      child: Material(
        color: Colors.transparent,
        child: SfProtectedInkWell.Create(
          onTap: () async {
            if (onPressed != null) {
              onPressed!.call();
            }
          },
          child: AnimatedSize(
            duration: Durations.fast,
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 50,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
              ),
              width: double.infinity,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding: verticalPadding,
                  child: Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: buttonTextStyle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
