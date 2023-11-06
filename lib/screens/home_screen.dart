import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/hotel_screen.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_styles.dart';

import '../utils/app_info_list.dart';
import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                           style: Styles.headlineStyle3 ,
                          ),
                         const Gap(5),
                          Text(
                          'Book Ticket',
                           style: Styles.headlineStyle,
                          ),
                      ],
                    ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                            "images/plane.png"
                          ),
                          ), 
                        ),
                      ),
                  ],
                ),
               const Gap(25),
               Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6f0),  
                ),
                 child: Row(
                  children: [
                   const Icon(FluentSystemIcons.ic_fluent_search_regular,
                    color: Color(0xFFBFC205),
                    ),
                    Text(
                      "search",
                      style: Styles.headlineStyle4,
                    ),
                  ],
                             ),
               ),
               const Gap(40),
                          const DoubleText(bigText: "Upcoming Flights", smallText: "view all",),

              ],
            ),
          ),
          const Gap(15),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
          )),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleText(bigText: "Hotels", smallText: "view all",),

          ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
          children:hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
        )),
        ],
      ),
    );
  }
}