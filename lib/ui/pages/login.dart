import 'package:flutter/material.dart';
import 'package:vive/infrastructure/repository/userService.dart';
import 'package:vive/ui/components/btnCustom.dart';
import 'package:vive/ui/components/checkCustom.dart';
import 'package:vive/ui/components/customTextfield.dart';
import 'package:vive/ui/components/headerLogin.dart';
import 'package:vive/ui/pages/sign/sign1.dart';
import 'package:vive/utils/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController correoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bg(),
        width: fullWidth(context),
        height: fullHeight(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderLogin(),
              SizedBox(
                height: fullHeight(context) * 0.05,
              ),
              CustomTextField(
                controller: correoController,
                icon: Icons.person,
                text: "Nombre de usuario",
                isPassword: false,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                controller: passwordController,
                icon: Icons.lock,
                text: "Contraseña",
                isPassword: true,
              ),
              const CustomCheckRow(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BtnCustom(
                  onPressed: () {
                    String correo = correoController.text.trim();
                    String password = passwordController.text.trim();

                    UserService.login(correo, password, context);
                  },
                  bg: primaryColor(),
                  textColor: colorWhite(),
                  text: "Iniciar Sesión",
                ),
              ),
              SizedBox(
                height: fullHeight(context) * 0.05,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "¿Haz olvidado tu contraseña?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  )),
              SizedBox(
                height: fullHeight(context) * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BtnCustom(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sign1()),
                    );
                  },
                  bg: colorWhite(),
                  borderColor: primaryColor(),
                  textColor: primaryColor(),
                  text: "Crear Cuenta",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
