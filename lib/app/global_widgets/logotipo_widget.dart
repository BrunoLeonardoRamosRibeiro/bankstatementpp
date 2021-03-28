import 'package:bankstatementpp/app/theme/app_images.dart';
import 'package:flutter/material.dart';

class LogotipoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Image.asset(imageLogo),
      ),
    );
  }
}
