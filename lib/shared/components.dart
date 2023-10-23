import 'package:flutter/material.dart';

import '../core/assets_image.dart';
import 'constant.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  GestureTapCallback? onTap,
  required FormFieldValidator<String>? validator,
  required String label,
  IconData? prefixIcon,
  IconData? suffix,
  GestureTapCallback? suffixPressed,
  bool obscure = false,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onTap: onTap,
      onChanged: onChange,
      validator: validator,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: kColor,
                ),
              )
            : null,
      ),
    );

Widget defaultTextTitle({
  required String title,
  double size = 50,
}) =>
    Text(
      title,
      style: TextStyle(
          color: kColor,
          fontWeight: FontWeight.w700,
          fontSize: size,
          fontStyle: FontStyle.italic),
    );

Widget defaultButton({
  required GestureTapCallback onPressed,
  required String text,
}) =>
    Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: MaterialButton(
        minWidth: 143,
        height: 32,
        onPressed: onPressed,
        color: kColor,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );

Widget forgetPassword({
  required GestureTapCallback onPressed,
}) =>
    TextButton(onPressed: onPressed, child: const Text('Forget Password?'));

Widget lineDivider() => Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 1,
            width: double.infinity,
            color: const Color(0xFFC3BBBB),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            'OR',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xFFC3BBBB),
          ),
        ),
      ],
    );

Widget otherLogin() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(AssetsData.kFacebookLogo),
        ),
        const SizedBox(
          width: 60,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(AssetsData.kGoogleLogo),
        ),
      ],
    );

Widget noAccount({
  required String youAccountOrNo,
  required String signOrLogin,
  required GestureTapCallback onPressed,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          youAccountOrNo,
          style: const TextStyle(fontSize: 14),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              signOrLogin,
              style: const TextStyle(color: kSignUp),
            )),
      ],
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
