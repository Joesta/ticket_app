import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/res/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/res/widgets/big_circle.dart';
import 'package:ticket_app/base/res/widgets/big_dot.dart';
import 'package:ticket_app/base/res/widgets/text_styler.dart';
import 'package:ticket_app/base/res/widgets/text_styler_sub.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 202,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    // show departure and destination with icons first line
                    Row(
                      children: [
                        TextStyler(text: ticket['from']['code']),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(
                                  randomDivider: 6,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                    angle: 1.57,
                                    child: const Icon(
                                      Icons.local_airport_sharp,
                                      color: Colors.white,
                                    ),),
                              ),
                            ],
                          ),
                        ),
                        const BigDot(),
                        Expanded(child: Container()),
                        TextStyler(text: ticket['to']['code']),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStylerSub(text: ticket['from']['name'],),
                        ),
                        Expanded(child: Container()),
                        TextStylerSub(text:ticket['flying_time'],),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStylerSub(text:ticket['to']['name'], align: TextAlign.end,),
                        ),
                      ],
                    ),
                  ],
                )),
            // circles and dots
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 20,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            // orange part of ticket
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(topText: ticket['date'], bottomText: 'Date'),
                      AppColumnTextLayout(topText: ticket['departure_time'], bottomText: 'Departure time', crossAxisAlignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(topText: '${ticket['number']}', bottomText: 'Number', crossAxisAlignment: CrossAxisAlignment.end,),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
