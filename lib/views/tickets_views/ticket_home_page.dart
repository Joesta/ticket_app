import 'package:flutter/material.dart';
import 'package:ticket_app/base/repo/data/tickets/tickets.json.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';

class TicketHomePage extends StatelessWidget {
  const TicketHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _tickets;
  }

  ListView get _tickets {
    return ListView(
      children: [
        SingleChildScrollView(
          child: Column(
            children:
                tickets.map((ticket) => TicketView(ticket: ticket, canFitScreen: true,)).toList(),
          ),
        ),
      ],
    );
  }
}

