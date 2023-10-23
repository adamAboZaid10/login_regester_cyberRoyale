import 'package:flutter/material.dart';
import 'package:taskone_training/features/forget_password/presntation/Widgets/forget_pass_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPassBodyWidget(),
    );
  }
}
