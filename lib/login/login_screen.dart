import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:instagram_clone/shared/constant/colors.dart';
import 'package:instagram_clone/shared/constant/value.dart';
import 'package:instagram_clone/shared/router/router.dart';
import 'package:instagram_clone/shared/utils/auth_methods.dart';
import 'package:instagram_clone/shared/widgets/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() async {
    EasyLoading.show(status: 'loading... ⏳ ⏳ ⏳');
    String res = await AuthMethods().signinUser(
      email: _emailController.text,
      password: _passwordController.text,
    );
    if (res == 'success') {
      EasyLoading.showSuccess('You are successfully Login ✅ ✅ ✅').then(
          (value) => Navigator.pushNamedAndRemoveUntil(
              context, AppRoutes.ROOT, (Route<dynamic> route) => false));
    } else {
      EasyLoading.showError(
          res.isNotEmpty ? res : 'Some error occured 😭 😭 😭');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: SCREEN_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container()),
            Image.asset(
              bundle: rootBundle,
              ConstantImages.IMAGE_LOGO_URL,
              height: 64,
              color: ConstantColors.primaryColor,
            ),
            const SizedBox(
              height: 40,
            ),
            TextInputFeild(
              controller: _emailController,
              type: TextInputType.emailAddress,
              hint: 'Enter your email',
            ),
            const SizedBox(
              height: 25,
            ),
            TextInputFeild(
              controller: _passwordController,
              type: TextInputType.text,
              hint: 'Enter your password',
              isPass: true,
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: login,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  color: ConstantColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                child: const Text('Login'),
              ),
            ),
            Flexible(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text('Dont have an account ?'),
                ),
                const SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.SIGNUP);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      'Sign up .',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}
