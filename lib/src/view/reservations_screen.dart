import 'package:flutter/material.dart';
import 'package:task_app/src/constants/colors.dart';
import 'package:task_app/src/constants/icons.dart';
import 'package:task_app/src/constants/style.dart';
import 'package:task_app/src/model/flight_model.dart';
import 'package:task_app/src/view/bag_scanner_screen.dart';
import 'package:task_app/src/widgets/fx_flight_card.dart';
import 'package:task_app/src/widgets/fx_sizedbox.dart';
import 'package:task_app/src/widgets/fx_svg_icon.dart';

class ReservationsScreen extends StatelessWidget {
  const ReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0.0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: AppColors.white,),
        title: Text("Reservations", style: customTexstyle(
          fontSize: 18,
        ),),
        actions: [
          FxSvgIcon(AppIcons.icRefresh),
          FxBox.w16,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10,),
        child: ListView.builder(
          itemCount: flights.length,
          itemBuilder: (context, index) {
            final flight = flights[index];
            return FlightCard(flight: flight, onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BagScannerScreen(flight: flight),));
            });
          },
        ),
      ),
    );
  }
}