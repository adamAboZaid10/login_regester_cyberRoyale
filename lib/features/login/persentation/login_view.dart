import 'package:flutter/material.dart';
import 'package:taskone_training/features/login/persentation/widgets/login_body_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBodyWidget(),
    );
  }
}
