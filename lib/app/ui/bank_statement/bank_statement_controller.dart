import 'package:bankstatementpp/app/data/models/account_movement.dart';
import 'package:bankstatementpp/app/data/repositories/account_movement_repository.dart';
import 'package:bankstatementpp/app/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BankStatementController extends GetxController {
  BankStatementController();

  AccountMovementRepository accountMovementRepository =
      AccountMovementRepository();

  var isLoading = false.obs;

  RxInt selectedType = RxInt(month);

  RxList<AccountMovement> accountMovement = RxList<AccountMovement>();

  RxDouble currentBalance = RxDouble(0.00);

  @override
  void onInit() {
    super.onInit();
    isLoading(true);
  }

  @override
  void onReady() {
    super.onReady();
    loadAccountMovement(movementPeriod: month);
  }

  void loadAccountMovement({@required int movementPeriod}) async {
    isLoading(true);

    selectedType(movementPeriod);

    var list = await accountMovementRepository.call();
    accountMovement.clear();

    var credit = 0.00;
    var debit = 0.00;

    // Scroll through the list to fill in the values
    list.forEach((element) {

      if (element.type == 'D') {
        debit = debit + element.value;
      }
      else {
        credit = credit + element.value;
      }

      if (element.daysBetween <= movementPeriod) {
        accountMovement.add(element);
      }
    });

    print(credit);
    print(debit);

    double balance = ( credit - debit );
    print(balance);

    currentBalance(balance);

    print(currentBalance.value);

    isLoading(false);
  }
}
