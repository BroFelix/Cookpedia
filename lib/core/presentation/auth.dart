import 'package:cookpedia/core/presentation/home.dart';
import 'package:cookpedia/core/res/color.dart';
import 'package:cookpedia/core/res/style.dart';
import 'package:cookpedia/core/res/text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/burger.avif',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: size.height * .68,
            width: size.width,
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 32.0),
                  const Text(
                    AppText.appName,
                    style: AppTextStyle.textStyle3,
                  ),
                  const SizedBox(height: 4.0),
                  const Text(
                    AppText.chef,
                    style: AppTextStyle.textStyle1,
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: IntlPhoneField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: AppColor.grey400,
                          ),
                        ),
                        counter: const SizedBox(),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: AppColor.grey400,
                            width: 2.0,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: AppColor.orange,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      showDropdownIcon: true,
                      dropdownIcon: const Icon(Icons.keyboard_arrow_down),
                      dropdownIconPosition: IconPosition.trailing,
                      flagsButtonMargin: const EdgeInsets.only(left: 16.0),
                      // flagsButtonPadding: EdgeInsets.only(left: 8.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: size.height * .065,
                      minWidth: size.width,
                      color: AppColor.orange,
                      child: Text(
                        AppText.logIn,
                        style: AppTextStyle.textStyle1.copyWith(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainPage()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 64.0,
                      vertical: 32.0,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            height: 4.0,
                            color: AppColor.grey600,
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18.0,
                          ),
                          child: Text(
                            AppText.or,
                            style: AppTextStyle.textStyle1.copyWith(
                              color: AppColor.grey600,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            height: 4.0,
                            color: AppColor.grey600,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      bottom: 8.0,
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: const BorderSide(
                          color: AppColor.grey400,
                          width: 2.0,
                        ),
                      ),
                      minWidth: size.width,
                      height: size.height * .065,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset('assets/images/apple.png'),
                          const Expanded(
                              child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              AppText.apple,
                              style: AppTextStyle.textStyle1,
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 8.0,
                    ),
                    height: size.height * .065,
                    width: size.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: const BorderSide(
                                color: AppColor.grey400,
                                width: 2.0,
                              ),
                            ),
                            minWidth: size.width,
                            height: size.height * .065,
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset('assets/images/facebook.png'),
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      AppText.facebook,
                                      style: AppTextStyle.textStyle1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 24.0),
                        Expanded(
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: const BorderSide(
                                color: AppColor.grey400,
                                width: 2.0,
                              ),
                            ),
                            minWidth: size.width,
                            height: size.height * .065,
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset('assets/images/google.png'),
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      AppText.google,
                                      style: AppTextStyle.textStyle1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.only(bottom: 36.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By continuing, you agree to our\n',
                          style: AppTextStyle.textStyle1.copyWith(fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: 'Terms of Service',
                              style: AppTextStyle.underlineStyle,
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                            const TextSpan(text: ' · '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: AppTextStyle.underlineStyle,
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                            const TextSpan(text: ' · '),
                            TextSpan(
                              text: 'Content Policy',
                              style: AppTextStyle.underlineStyle,
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
