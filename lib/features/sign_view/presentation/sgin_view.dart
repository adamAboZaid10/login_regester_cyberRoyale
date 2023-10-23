import 'package:flutter/material.dart';
import 'package:taskone_training/features/sign_view/presentation/widgets/sign_body_view.dart';

class SignView extends StatelessWidget {
  const SignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignBodyView(),
    );
  }
}
