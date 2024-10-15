import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vive/infrastructure/controllers/controllerUser.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllerUser controllerUser = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 100, right: 20, bottom: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromARGB(52, 177, 207, 231).withOpacity(0.5),
                        width: 4), // Borde azul suave
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage(controllerUser.user!.imageUrl),
                  ),
                )),
            const SizedBox(height: 16),
            Text(
              "Correo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Obx(() => Text(
                  controllerUser.user!.correo,
                  style: TextStyle(fontSize: 16),
                )),
            const SizedBox(height: 24),
            const Text("Ajustes", style: TextStyle(fontSize: 18)),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración de la cuenta'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Privacidad'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
