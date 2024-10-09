import 'package:flutter/material.dart';

class NavUtil {
  static void _navigate({required BuildContext context, required String route}) {
    Navigator.pushNamed(context, route);
  }
}