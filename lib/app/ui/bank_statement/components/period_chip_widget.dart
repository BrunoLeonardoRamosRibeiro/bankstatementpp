import 'package:bankstatementpp/app/theme/app_colors.dart';
import 'package:bankstatementpp/app/ui/bank_statement/bank_statement_controller.dart';
import 'package:bankstatementpp/app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PeriodChipWidget extends StatelessWidget {
  final String text;
  final int movementPeriod;

  PeriodChipWidget({@required this.text, @required this.movementPeriod});

  BankStatementController controller = Get.find<BankStatementController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Obx(
            () => InkWell(
          onTap: () => controller.loadAccountMovement(movementPeriod: movementPeriod),
          child: Chip(
            backgroundColor:
            controller.selectedType.value == movementPeriod
                ? Colors.black
                : Colors.grey[400],
            label: Text(
              text,
              style: TextStyle(
                color:
                controller.selectedType.value == movementPeriod
                    ? bankColor
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
