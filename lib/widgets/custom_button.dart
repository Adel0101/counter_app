import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  /// A custom button widget that accepts an iconData and a function.
  const CustomButton({
    super.key,
    required this.icon,
    required this.onPress,
  });
  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
