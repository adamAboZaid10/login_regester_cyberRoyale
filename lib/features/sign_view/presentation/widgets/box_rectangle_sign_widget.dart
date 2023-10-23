import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskone_training/features/forget_password/presntation/forget_password_view.dart';
import 'package:taskone_training/features/sign_view/data/cubit/cubit.dart';
import 'package:taskone_training/features/sign_view/data/cubit/states.dart';

import '../../../../core/assets_image.dart';
import '../../../../shared/components.dart';

class BoxRectangleSignWidget extends StatelessWidget {
  BoxRectangleSignWidget({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var activePasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignCubit(),
      child: BlocConsumer<SignCubit, SignStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SignCubit.get(context);
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
                            controller: emailController,
                            type: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'email is not founded';
                              }
                              return null;
                            },
                            label: 'Email Address ',
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 302,
                          height: 51,
                          child: defaultFormField(
                            suffix: cubit.suffix,
                            obscure: cubit.obscureText,
                            suffixPressed: () {
                              cubit.changePasswordVisibility();
                            },
                            controller: passwordController,
                            type: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password is not founded';
                              }
                              return null;
                            },
                            label: 'Password',
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 302,
                          height: 51,
                          child: defaultFormField(
                            suffix: cubit.suffix,
                            obscure: cubit.obscureText,
                            suffixPressed: () {
                              cubit.changePasswordVisibility();
                            },
                            controller: activePasswordController,
                            type: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password is not founded';
                              }
                              return null;
                            },
                            label: 'Password',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        defaultButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            text: 'Sign UP'),
                        const SizedBox(
                          height: 10,
                        ),
                        forgetPassword(onPressed: () {
                          navigateTo(context, const ForgetPasswordView());
                        }),
                        lineDivider(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
