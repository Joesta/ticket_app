import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyler extends StatelessWidget {
  final String text;

  const TextStyler({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
    );
  }
}
