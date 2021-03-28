import 'package:bankstatementpp/app/data/models/account_movement.dart';
import 'package:bankstatementpp/app/data/repositories/account_movement_interface.dart';

class AccountMovementRepository implements IAccountMovementInterface {
  List<AccountMovement> listAccountMovement;

  @override
  Future<List<AccountMovement>> call() {
      listAccountMovement = [
        AccountMovement(
          description: "Depósito em conta",
          type: "C",
          date: "01/03/2021",
          value: 5000.00,
        ),
        AccountMovement(
          description: "Pagamento de lanche",
          type: "D",
          date: "02/03/2021",
          value: 20.00,
        ),
        AccountMovement(
          description: "Pagamento de lanche",
          type: "D",
          date: "03/03/2021",
          value: 20.00,
        ),
        AccountMovement(
          description: "Energia/Luz",
          type: "D",
          date: "10/03/2021",
          value: 1123.50,
        ),
        AccountMovement(
          description: "Aluguel",
          type: "D",
          date: "15/03/2021",
          value: 1500.00,
        ),
        AccountMovement(
          description: "Almoço",
          type: "D",
          date: "16/03/2021",
          value: 25.00,
        ),
        AccountMovement(
          description: "Almoço",
          type: "D",
          date: "17/03/2021",
          value: 25.50,
        ),
        AccountMovement(
          description: "Almoço",
          type: "D",
          date: "18/03/2021",
          value: 25.00,
        ),
        AccountMovement(
          description: "Depósito em conta",
          type: "C",
          date: "28/03/2021",
          value: 1000.00,
        ),
      ];
      return Future.value(listAccountMovement);
  }
}
