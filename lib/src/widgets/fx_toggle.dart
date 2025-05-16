// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:task_app/src/constants/colors.dart';
import 'package:task_app/src/constants/style.dart';

class FxToggle extends StatelessWidget {
  final ValueNotifier<bool> isScanned = ValueNotifier<bool>(true);
  final ValueNotifier<bool> isNotCollected = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isNotDelivered = ValueNotifier<bool>(false);

  FxToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildToggleRow("Scanned", isScanned,),
          _buildToggleRow("Not collected", isNotCollected),
          _buildToggleRow("Not delivered", isNotDelivered),
        ],
      ),
    );
  }

  Widget _buildToggleRow(String label, ValueNotifier<bool> notifier, {Color? activeColor}) {
    return ValueListenableBuilder<bool>(
      valueListenable: notifier,
      builder: (context, value, _) {
        return Row(
          children: [
            Transform.scale(
              scale: 0.75,
              child: CupertinoSwitch(
                value: value,
                onChanged: (val) => notifier.value = val,
                activeColor: notifier.value ? activeColor : AppColors.secondaryTextColor,
              ),
            ),
            Text(
              label,
              style: customTexstyle(fontSize: 12, color: notifier.value ? AppColors.green : AppColors.secondaryTextColor,),
            ),
          ],
        );
      },
    );
  }
}
