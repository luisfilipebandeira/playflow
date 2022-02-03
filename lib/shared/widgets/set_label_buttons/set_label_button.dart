import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import '../../themes/app_text_styles.dart';
import '../divider_vertical/divider_vertical.dart';
import '../label_button/label_button.dart';

class SetLabelButton extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final bool enablePrimaryColor;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  const SetLabelButton(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      this.enablePrimaryColor = false,
      required this.secondaryLabel,
      required this.secondaryOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}
