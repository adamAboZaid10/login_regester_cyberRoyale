import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_image.dart';
import '../../../../shared/components.dart';
import '../../../../shared/constant.dart';

class BoxRectangleForgetPass extends StatelessWidget {
  BoxRectangleForgetPass({Key? key}) : super(key: key);
  var forgetPassController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SvgPicture.asset(AssetsData.kRectangleLogo),
        Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: 302,
                    height: 51,
                    child: defaultFormField(
                      controller: forgetPassController,
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'entry your email address';
                        }
                        return null;
                      },
                      label: 'Email Address ',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: MaterialButton(
                      minWidth: 302,
                      height: 47,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                      color: kColor,
                      child: const Text(
                        'Reset Password',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
