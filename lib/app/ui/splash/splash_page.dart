import 'package:bankstatementpp/app/global_widgets/logotipo_widget.dart';
import 'package:bankstatementpp/app/theme/app_colors.dart';
import 'package:bankstatementpp/app/ui/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) => Scaffold(
        backgroundColor: bankColor,
        body: Stack(
          children: [
            LogotipoWidget(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircularProgressIndicator(
                  backgroundColor: bankColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
