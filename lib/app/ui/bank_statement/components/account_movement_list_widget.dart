import 'package:bankstatementpp/app/global_widgets/custom_divider_widget.dart';
import 'package:bankstatementpp/app/ui/bank_statement/bank_statement_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class AccountMovementListWidget extends StatelessWidget {
  final money = NumberFormat("##,##0.00", "pt_BR");

  BankStatementController controller = Get.find<BankStatementController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.isLoading.isFalse,
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: controller.accountMovement.length,
            itemBuilder: (_, index) {
              var item = controller.accountMovement[index];
              return Column(
                children: [
                  ListTile(
                    leading: Chip(
                      backgroundColor: item.type == 'D' ? Colors.red : Colors.green,
                      label: Text(
                        item.type,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(
                      item.description,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(item.date),
                    trailing: Text('R\$ ${money.format(item.value)}'),
                  ),
                  CustomDivider(),
                ],
              );
            }),
      ),
    );
  }
}
