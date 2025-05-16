import 'package:flutter/material.dart';
import 'package:task_app/src/constants/colors.dart';
import 'package:task_app/src/constants/style.dart';
import 'package:task_app/src/model/flight_model.dart';
import 'package:task_app/src/widgets/fx_sizedbox.dart';

class FxBagReservationCard extends StatelessWidget {
  final Flight flight;
  final bool isBottom;

  const FxBagReservationCard({
    super.key,
    required this.flight, required this.isBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isBottom ? 200 : 100 ,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Reservation No: ${flight.flightNumber}",
                        style: customTexstyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h6,
                      Text(
                        "Flight No. ${flight.airlineCode}",
                        style: customTexstyle(),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: isBottom ? false : true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.darkGrey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: isBottom,
                child: FxBox.h20,
              ),
              Visibility(
                visible: isBottom,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                        children: [
                          TextSpan(
                            text: '1/3',
                            style: customTexstyle(
                              color: AppColors.white,
                              fontSize: 18
                            ),
                          ),
                          TextSpan(text: ' Bags found and scanned', style: customTexstyle(
                            color: AppColors.secondaryTextColor,
                          ),),
                        ],
                      ),
                    ),
                    FxBox.h20,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 1/3,
                        minHeight: 8,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
                        backgroundColor: AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}