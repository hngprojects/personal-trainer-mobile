import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Color enabledColor;
  final Icon? buttonIcon;
  final Color? disabledColor;
  final Color? textColor;
  final void Function()? onPressed;
  final bool? isPrimary;
  const AppButton({
    required this.textColor,
    required this.onPressed,
    required this.buttonText,
    this.isPrimary,
    this.disabledColor,
    this.buttonIcon,
    required this.enabledColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: disabledColor,
        backgroundColor: enabledColor,
        elevation: 0,
        fixedSize: const Size(double.infinity, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(buttonText, style: TextStyle(color: textColor))],
      ),
    );
  }
}
