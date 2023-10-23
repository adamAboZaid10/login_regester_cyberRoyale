import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskone_training/features/forget_password/presntation/Widgets/box_rectangle_forget_widget.dart';
import 'package:taskone_training/features/login/persentation/login_view.dart';
import 'package:taskone_training/shared/components.dart';

import '../../../../core/assets_image.dart';

class ForgetPassBodyWidget extends StatelessWidget {
  const ForgetPassBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SvgPicture.asset(AssetsData.kTopLogo),
          const SizedBox(
            height: 120,
          ),
          defaultTextTitle(title: 'Forget Password', size: 35),
          const SizedBox(
            height: 40,
          ),
          BoxRectangleForgetPass(),
          noAccount(
              youAccountOrNo: 'Already have an account? ',
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
