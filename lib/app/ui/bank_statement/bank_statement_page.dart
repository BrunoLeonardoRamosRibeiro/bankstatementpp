import 'package:bankstatementpp/app/theme/app_colors.dart';
import 'package:bankstatementpp/app/theme/app_images.dart';
import 'package:bankstatementpp/app/ui/bank_statement/bank_statement_controller.dart';
import 'package:bankstatementpp/app/ui/bank_statement/components/account_movement_list_widget.dart';
import 'package:bankstatementpp/app/ui/bank_statement/components/period_chip_widget.dart';
import 'package:bankstatementpp/app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BankStatementPage extends StatelessWidget {
  final money = NumberFormat("##,##0.00", "pt_BR");

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BankStatementController>(
      init: BankStatementController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text('Extrato Bancário - c/c 10.0001-X', style: TextStyle(color: bankColor)),
          elevation: 0,
        ),
        backgroundColor: bankColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 90,
                width: 250,
                child: Image.asset(imageLogo),
              ),
              Text('Saldo Atual'),
              Obx(
                () => Visibility(
                  visible: controller.isLoading.isFalse,
                  child: Text(
                    'R\$ ${money.format(controller.currentBalance.value)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: double.maxFinite,
                child: Row(
                  children: [
                    PeriodChipWidget(
                        text: '07 dias', movementPeriod: sevenDays),
                    PeriodChipWidget(
                        text: '15 dias', movementPeriod: fifteenDays),
                    PeriodChipWidget(text: '30 dias', movementPeriod: month),
                  ],
                ),
              ),
              Divider(color: Colors.black,),
              AccountMovementListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
