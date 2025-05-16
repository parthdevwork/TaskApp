import 'package:flutter/material.dart';
import 'package:task_app/src/constants/colors.dart';
import 'package:task_app/src/constants/icons.dart';
import 'package:task_app/src/constants/style.dart';
import 'package:task_app/src/model/flight_model.dart';
import 'package:task_app/src/widgets/fx_bag_reservation_card.dart';
import 'package:task_app/src/widgets/fx_sizedbox.dart';
import 'package:task_app/src/widgets/fx_svg_icon.dart';
import 'package:task_app/src/widgets/fx_toggle.dart';

class BagScannerScreen extends StatelessWidget {
  final Flight flight;
  const BagScannerScreen({super.key, required this.flight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: AppColors.white,),
        ),
        title: Text("Bag Scanner", style: customTexstyle(
          fontSize: 18,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bags Scanned 0/3", style: customTexstyle(),),
            FxBox.h16,
            Container(
              height: 6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.secondaryTextColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context, 
            backgroundColor: AppColors.bottomCard,
            isScrollControlled: true,
            builder: (context) {
              return SizedBox(
                height: 750,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox.shrink(),
                          Text("Reservation info", style: customTexstyle(fontSize: 16,),),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close, color: AppColors.white,)),
                        ],
                      ),
                      FxBox.h28,
                      FxBagReservationCard(flight: flight, isBottom: true),
                      FxBox.h20,
                      Text("Bags", style: customTexstyle(
                        color: AppColors.secondaryTextColor,
                      ),),
                      FxBox.h20,
                      Expanded(child: ListView.builder(
                        itemCount: flight.bags.length,
                        itemBuilder: (context, index) {
                          final bag = flight.bags[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: AppColors.darkGrey,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: FxSvgIcon(AppIcons.icBag),
                                      ),
                                    ),
                                    FxBox.w8,
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(bag.id, style: customTexstyle(fontSize: 12)),
                                        FxBox.h4,
                                        if (bag.lastScannedTime != "" && bag.lastScannedTime.trim().isNotEmpty) ...[
                                          Text(bag.lastScannedTime, style: customTexstyle(fontSize: 12)),
                                          FxBox.h4,
                                          Text(
                                            "6 seconds ago",
                                            style: customTexstyle(
                                              color: AppColors.secondaryTextColor,
                                              fontSize: 13,
                                            ),
                                          ),
                                          FxBox.h4,
                                        ],
                                        FxBox.h8,
                                        if (bag.status == "Not Found")
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.red,
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  bag.status,
                                                  style: customTexstyle(
                                                    color: AppColors.primaryTextColor,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Visibility(
                                        visible: bag.status == "Scanned",
                                        child: FxToggle()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ))
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: FxBagReservationCard(flight: flight, isBottom: false),
      ),
    );
  }
}
