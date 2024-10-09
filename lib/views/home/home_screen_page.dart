import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/repo/data/hotel/hotels.dart';
import 'package:ticket_app/base/repo/data/tickets/tickets.json.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_double_text.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';
import 'package:ticket_app/views/widgets/hotel.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good morning', style: AppStyles.headlineStyle2),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('Book Tickets', style: AppStyles.headlineStyle1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          //image: const DecorationImage(image: AssetImage(AppMedia.logo),), // @todo use this when you have your images in place.
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          'Search',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'view all',
                    onTap: _viewTickets,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: tickets
                            .take(3)
                            .map((ticket) => TicketView(
                                  ticket: ticket,
                                ))
                            .toList()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppDoubleText(
                    bigText: 'Hotels',
                    smallText: 'view all',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                      children: hotels.take(3).map(($hotel) => Hotel(hotel: $hotel)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _viewTickets() => Navigator.pushNamed(context, 'tickets');

  void _viewHotels() => Navigator.pushNamed(context, 'hotels');
}
