import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/shared/constant/colors.dart';
import 'package:instagram_clone/shared/constant/value.dart';
import 'package:instagram_clone/shared/router/router.dart';
import 'package:instagram_clone/shared/utils/auth_methods.dart';
import 'package:instagram_clone/shared/utils/image_handle.dart';
import 'package:instagram_clone/shared/widgets/text_input_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Uint8List? _image;

  void selectImage() async {
    Uint8List imageSource = await pickImage(ImageSource.gallery);
    setState(() {
      _image = imageSource;
    });
  }

  void signupUser() async {
    EasyLoading.show(status: 'loading... ⏳ ⏳ ⏳');
    String res = await AuthMethods().signupUser(
      bio: _bioController.text,
      email: _emailController.text,
      password: _passwordController.text,
      username: _usernameController.text,
      file: _image,
    );
    if (res == 'success') {
      EasyLoading.showSuccess('Account created successfully ✅ ✅ ✅').then((_) =>
          Navigator.pushNamedAndRemoveUntil(
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
              height: 30,
            ),
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 64,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : const CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage(
                            'https://aquaforall.org/viawater/files/default-user.png'),
                      ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: selectImage,
                    icon: const Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            TextInputFeild(
              controller: _usernameController,
              type: TextInputType.text,
              hint: 'Enter your name',
            ),
            const SizedBox(
              height: 20,
            ),
            TextInputFeild(
              controller: _emailController,
              type: TextInputType.emailAddress,
              hint: 'Enter your email',
            ),
            const SizedBox(
              height: 20,
            ),
            TextInputFeild(
              controller: _passwordController,
              type: TextInputType.text,
              hint: 'Enter your password',
              isPass: true,
            ),
            const SizedBox(
              height: 20,
            ),
            TextInputFeild(
              controller: _bioController,
              type: TextInputType.text,
              hint: 'Enter your bio',
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: signupUser,
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
                child: const Text('Sign up'),
              ),
            ),
            Flexible(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text('Already have an account ?'),
                ),
                const SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.LOGIN);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      'Sign in .',
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
    _usernameController.dispose();
    _bioController.dispose();
  }
}
