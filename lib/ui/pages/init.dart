import 'package:flutter/material.dart';
import 'package:vive/ui/components/btnCustom.dart';
import 'package:vive/ui/pages/login.dart';
import 'package:vive/ui/pages/sign/sign1.dart';
import 'package:vive/utils/styles.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Row(
              children: [
                Icon(
                  Icons.warning,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('La app se cerrará'),
              ],
            ),
            content: const Text('¿seguro que quieres salir de la aplicacion?.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context)
                    .pop(false), 
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context)
                    .pop(true), 
                child: const Text('Sí'),
              ),
            ],
          ),
        )) ??
        false; 
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: bgPrincipal(),
        body: Container(
          height: fullHeight(context),
          width: fullWidth(context),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: fullHeight(context) * 0.35,
                ),
                Image.asset(
                  'assets/logo-vive.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
                Container(
                  padding: paddingDefauld(),
                  width: fullWidth(context),
                  child: Column(
                    children: [
                      SizedBox(
                        height: fullHeight(context) * 0.1,
                      ),
                      BtnCustom(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        bg: primaryColor(),
                        textColor: colorWhite(),
                        text: "Iniciar Sesión",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BtnCustom(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sign1()),
                          );
                        },
                        bg: colorWhite(),
                        borderColor: colorWhite(),
                        textColor: primaryColor(),
                        text: "Crear Cuenta",
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
