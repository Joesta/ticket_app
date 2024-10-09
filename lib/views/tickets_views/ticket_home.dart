import 'package:flutter/material.dart';
import 'package:ticket_app/views/tickets_views/ticket_home_page.dart';


class TicketHome extends StatelessWidget {
  const TicketHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tickets'),
      ),
      body:TicketHomePage(),
    );
  }
}
