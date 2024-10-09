import 'package:flutter/material.dart';
import 'package:ticket_app/base/repo/data/hotel/hotels.dart';
import 'package:ticket_app/base/res/media/app_media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container( // main container.
      padding: EdgeInsets.only(left: 6, right: 6),
      margin: const EdgeInsets.all(6),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container( // image container
            margin: const EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppMedia.hotelRoom),
              ),
            ),
          ),
          Text(hotel['place'], style: AppStyles.headlineStyle2.copyWith(color: AppStyles.kakiColor),),
          SizedBox(height: 5,),
          Text('\$${hotel['price']}/night', style: AppStyles.headlineStyle2.copyWith(color: Colors.white),),
          SizedBox(height: 5,),
          Text(hotel['destination'], style: AppStyles.headlineStyle2.copyWith(color: AppStyles.kakiColor),),
        ],
      ),
    );
  }
}
