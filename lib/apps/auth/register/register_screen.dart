import 'package:flutter/material.dart';
import 'package:git_test_app/Widgets/TextField/password_textfield.dart';
import 'package:git_test_app/apps/auth/login/providers/auth_provider.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:git_test_app/widgets/button/custom_btn.dart';
import 'package:git_test_app/widgets/button/or/k_or.dart';
import 'package:git_test_app/widgets/textField/k_textField.dart';
import '../../../widgets/button/google_btn.dart';
import '../login/components/auth_msg.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final globalKey = GlobalKey<FormState>();
  AuthNotifier authNotifier = AuthNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Form(
            key: globalKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AuthMessage(
                    title: "Hi! Welcome",
                    subtitle: "Register in to your account",
                  ),
                  SizedBox(height: context.screenHeight * 0.05),
                  KTextField(
                    label: "Email",
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    controller: email,
                  ),
                  const SizedBox(height: 12),
                  PasswordTextField(
                    label: "Password",
                    controller: password,
                    icon: Icon(Icons.vpn_key_outlined,
                        color: Colors.black.withOpacity(0.3)),
                  ),
                  SizedBox(height: context.screenHeight*0.1),
                  KButton(
                    btnColor: Colors.lightBlue,
                    btnWidth: context.screenWidth,
                    btnText: 'Register',
                    tap: () {
                      authNotifier.register(
                          email: email.text,
                          password: password.text,
                          context: context
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
