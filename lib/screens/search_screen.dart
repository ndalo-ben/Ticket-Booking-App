import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/widgets/ticket_tabs.dart';
import 'package:tickets/utils/app_styles.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
           Gap(AppLayout.getHeight(40)),
           Text(
            "What are \n you looking for?",
            style: Styles.headlineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
           ),
           Gap(AppLayout.getHeight(20)),
           const TicketTabs(firstTab: "Airplane Tickets", secondTab: "Hotels",),
           Gap(AppLayout.getHeight(25)),
         const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure",),
         Gap(AppLayout.getHeight(20)),
         const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival",),
         Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text("find tickets", 
                  style: Styles.textStyle.copyWith(color: Colors.white),
                  
                  ),
            ),
           ),
           const Gap(40),
           const DoubleText(bigText: "Upcoming Flights", smallText: "view all",),
            Gap(AppLayout.getHeight(15)),
           Row(
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width*.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(12), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                        image: AssetImage(
                          "images/travel.jpg",
                        )
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out on this chance.",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
              children: [
              Stack(
                children: [
                    Container(
                      width: size.width*.44,
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        color: const Color(0xFF34BBBB),
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                      ),
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount\nfor survey", 
                          style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold,
                          color: Colors.white
                          ),
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text("Take the survey about our services and get a discount", 
                          style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18
                          ),
                          )
              
                        ],
                      ),
                    ),
                    Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: const Color(0xFF189999)),
                          color: Colors.transparent
                        ),
                      ),
                    )
                ],
              ),
              Gap(AppLayout.getHeight(15)),
              Container(
                width: size.width*.44,
                 height: AppLayout.getHeight(210),
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18),),
                  color: const Color(0xFFEC6545),
                 ),
                 child: Column(
                  children: [
                  Text("Take Love",
                   style: Styles.headlineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              Gap(AppLayout.getHeight(5)),
              RichText(text: const TextSpan(
                children: [
                  TextSpan(
                    text: '',
                    style: TextStyle(fontSize: 30)
                  ),
                  TextSpan(
                    text: '',
                    style: TextStyle(fontSize: 50)
                  ),
                  TextSpan(
                    text: '',
                    style: TextStyle(fontSize: 30)
                  )
                ]
              ))

                 ]),
              )
                          ],
            ),
            ],
            
           )
        ],   
      ), 
    );
  }
}     