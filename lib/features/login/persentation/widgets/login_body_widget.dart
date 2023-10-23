import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskone_training/features/login/persentation/widgets/box_rectangle.dart';
import 'package:taskone_training/features/sign_view/presentation/sgin_view.dart';

import '../../../../core/assets_image.dart';
import '../../../../shared/components.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({Key? key}) : super(key: key);
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
          defaultTextTitle(title: 'Log In!'),
          const SizedBox(
            height: 40,
          ),
          BoxRectangleBody(),
          const SizedBox(
            height: 18,
          ),
          otherLogin(),
          const SizedBox(
            height: 18,
          ),
          noAccount(
              youAccountOrNo: 'don\'t have an account',
              signOrLogin: 'Sign Up',
              onPressed: () {
                navigateTo(context, const SignView());
              }),
          SvgPicture.asset(AssetsData.kBottomLogo),
        ],
      ),
    );
  }
}
