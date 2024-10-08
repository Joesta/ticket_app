import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/text_styler.dart';
import 'package:ticket_app/base/res/widgets/text_styler_sub.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAxisAlignment;
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyler(text: topText),
        const SizedBox(height: 5,),
        TextStylerSub(text: bottomText),
      ],
    );
  }
}
