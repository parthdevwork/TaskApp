import 'package:flutter/material.dart';
import 'package:task_app/src/constants/colors.dart';
import 'package:task_app/src/constants/icons.dart';
import 'package:task_app/src/constants/style.dart';
import 'package:task_app/src/model/flight_model.dart';
import 'package:task_app/src/widgets/fx_sizedbox.dart';
import 'package:task_app/src/widgets/fx_svg_icon.dart';

class FlightCard extends StatelessWidget {
  final Flight flight;
  final VoidCallback? onTap;

  const FlightCard({
    super.key,
    required this.flight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(flight.flightNumber, style: customTexstyle()),
                      FxBox.h8,
                      Row(
                        children: [
                          Text("1", style: customTexstyle()),
                          FxBox.w24,
                          FxSvgIcon(AppIcons.icBag, color: AppColors.secondaryTextColor),
                        ],
                      ),
                    ],
                  ),
                  FxBox.w20,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(flight.airlineCode, style: customTexstyle()),
                        FxBox.h8,
                        Text(flight.destination, style: customTexstyle(fontSize: 13, color: AppColors.secondaryTextColor)),
                      ],
                    ),
                  ),
                  FxBox.w10,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(flight.scheduledTime, style: customTexstyle()),
                          Text("–", style: customTexstyle()),
                          Text(flight.estimatedTime, style: customTexstyle()),
                        ],
                      ),
                      Icon(Icons.chevron_right_sharp, color: AppColors.white),
                    ],
                  ),
                ],
              ),
              FxBox.h16,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGrey,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(flight.terminal, style: customTexstyle(fontSize: 13)),
                      Text(flight.gate, style: customTexstyle(fontSize: 12)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
