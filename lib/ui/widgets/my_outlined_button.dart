import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;
  final String label;
  final int color;
  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green[color],
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      label: Text(
        label,
        style: _textTheme.bodyText1,
      ),
    );
  }
}
