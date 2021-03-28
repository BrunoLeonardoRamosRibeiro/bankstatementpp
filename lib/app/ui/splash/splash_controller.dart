import 'package:bankstatementpp/app/ui/bank_statement/bank_statement_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    Future.delayed(Duration(seconds: 2)).then(
      (value) => Get.off(
        () => BankStatementPage(),
        transition: Transition.zoom,
      ),
    );
  }
}
