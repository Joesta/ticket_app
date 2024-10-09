import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/views/tickets_views/ticket_home.dart';

class Routes {
  static Map<String, WidgetBuilder> get(BuildContext context) {
    return {
      '/': (context) => const  BottomNavBar(),
      'tickets': (context) => const TicketHome(),
    };
  }
}