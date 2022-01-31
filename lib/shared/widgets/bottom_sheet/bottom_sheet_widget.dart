import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_button.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;

  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;

  final String title;
  final String subtitle;

  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      child: Column(
        children: [
          Text(title),
          Text(subtitle),
          SetLabelButton(
              primaryLabel: primaryLabel,
              primaryOnPressed: primaryOnPressed,
              secondaryLabel: secondaryLabel,
              secondaryOnPressed: secondaryOnPressed)
        ],
      ),
    );
  }
}