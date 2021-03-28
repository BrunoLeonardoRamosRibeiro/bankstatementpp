import 'package:bankstatementpp/app/data/models/account_movement.dart';

abstract class IAccountMovementInterface {
  Future<List<AccountMovement>> call();
}