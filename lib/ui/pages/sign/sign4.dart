import 'dart:io';
import 'package:flutter/material.dart';
import 'package:vive/domain/services/respuestaSign.dart';
import 'package:vive/ui/components/btnCustom.dart';
import 'package:vive/ui/components/customProgresoSign.dart';
import 'package:vive/ui/components/customTextfield1.dart';
import 'package:vive/utils/styles.dart';

class Sign4 extends StatefulWidget {
  final String correo;
  final String nombre;
  final File image;
  const Sign4(
      {super.key,
      required this.correo,
      required this.nombre,
      required this.image});

  @override
  State<Sign4> createState() => _Sign4State();
}

class _Sign4State extends State<Sign4> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Paso 4 de 4",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProgresoSign(porcentaje: fullWidth(context) * 0.9),
                    const SizedBox(height: 20),
                    Container(
                      width: 400,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        "Casi listo, solo crea tu cuenta",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextField1(
                      isPassword: true,
                      text: "Crea una contraseña",
                      controller: passwordController,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField1(
                      isPassword: true,
                      text: "Confirma la contraseña",
                      controller: confirmPasswordController,
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: BtnCustom(
                onPressed: () {
                  RespuestaSign.crearCuenta(
                      image: widget.image,
                      correo: widget.correo,
                      nombre: widget.nombre,
                      context: context,
                      password: passwordController.text,
                      confirmPassword: confirmPasswordController.text);
                },
                bg: primaryColor(),
                textColor: colorWhite(),
                text: "Crear Cuenta",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
