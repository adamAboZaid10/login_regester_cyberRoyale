import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskone_training/features/login/persentation/login_view.dart';
import 'package:taskone_training/features/sign_view/presentation/widgets/box_rectangle_sign_widget.dart';

import '../../../../core/assets_image.dart';
import '../../../../shared/components.dart';

class SignBodyView extends StatelessWidget {
  const SignBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SvgPicture.asset(AssetsData.kTopLogo),
          const SizedBox(
            height: 80,
          ),
          defaultTextTitle(title: 'Sign Up'),
          const SizedBox(
            height: 40,
          ),
          BoxRectangleSignWidget(),
          const SizedBox(
            height: 18,
          ),
          otherLogin(),
          const SizedBox(
            height: 18,
          ),
          noAccount(
              youAccountOrNo: 'don\'t have an account',
              signOrLogin: 'Log In',
              onPressed: () {
                navigateTo(context, const LoginView());
              }),
          SvgPicture.asset(AssetsData.kBottomLogo),
        ],
      ),
    );
  }
}
