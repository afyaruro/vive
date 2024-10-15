import 'package:flutter/material.dart';
import 'package:vive/ui/components/searchBar.dart';
import 'package:vive/ui/pages/sign/customChatGrupo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/logo_letras.png",
              fit: BoxFit.cover,
              width: 100,
            ),
            SizedBox(
              height: 25,
            ),
            SearchBar1(),
            SizedBox(
              height: 25,
            ),
            const CustomChatGrupo(
              hora: "07:45 pm",
              titulo: "Desarrolladores Flutter",
              imagen:
                  "https://www.farandsoft.com/newsite/wp-content/uploads/2019/03/ShopApp-para-la-gesti%C3%B3n-de-pedidos-y-ventas.jpg", // Imagen relacionada con Flutter
              texto:
                  "Ya casi terminamos el proyecto de la app. Solo falta integrar Firebase y realizar las pruebas finales antes del lanzamiento.",
            ),
            const CustomChatGrupo(
              hora: "10:30 am",
              titulo: "Marketing Digital",
              imagen:
                  "https://cdn-icons-png.flaticon.com/512/1233/1233946.png", // Imagen relacionada con marketing digital
              texto:
                  "Recuerden que la campaña del próximo mes es crucial. Necesitamos revisar los últimos detalles de la estrategia de SEO y redes sociales.",
            ),
            const CustomChatGrupo(
              hora: "03:15 pm",
              titulo: "Grupo de Diseño UX/UI",
              imagen:
                  "https://cdn-icons-png.flaticon.com/512/1484/1484796.png", // Imagen relacionada con diseño UX/UI
              texto:
                  "Ya se actualizaron los wireframes del dashboard, pero necesitamos más feedback sobre la experiencia de usuario en dispositivos móviles.",
            ),
            const CustomChatGrupo(
              hora: "01:05 pm",
              titulo: "Cocina y Recetas",
              imagen:
                  "https://cdn-icons-png.flaticon.com/512/2942/2942349.png", // Imagen relacionada con cocina y recetas
              texto:
                  "¿Quién más probó la receta de lasaña que compartí ayer? ¡Quedó increíble! Estoy pensando en hacer un pastel de zanahoria este fin de semana.",
            ),
            const CustomChatGrupo(
              hora: "09:50 pm",
              titulo: "Música y Producción",
              imagen:
                  "https://cdn-icons-png.flaticon.com/512/201/201818.png", // Imagen relacionada con música y producción
              texto:
                  "Acabo de terminar de mezclar la nueva pista. Necesito que la escuchen y me den sus comentarios sobre el balance de instrumentos.",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFA1D0FF), // Color de fondo
        foregroundColor: Colors.white, // Color del icono
        child: const Icon(Icons.add_comment),
      ),
      floatingActionButtonLocation: CustomFloatingButtonLocation(
        offsetFromBottom: 80,
        offsetFromRight: 16,
      ),
    );
  }
}

class CustomFloatingButtonLocation extends FloatingActionButtonLocation {
  final double offsetFromBottom;
  final double offsetFromRight;

  CustomFloatingButtonLocation({
    this.offsetFromBottom =
        100, // Ajusta este valor para mover el FAB más arriba
    this.offsetFromRight =
        16, // Ajusta este valor para mover el FAB a la derecha
  });

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Obtener el ancho y la altura del Scaffold
    double fabX = scaffoldGeometry.scaffoldSize.width -
        scaffoldGeometry.floatingActionButtonSize.width -
        offsetFromRight;
    double fabY = scaffoldGeometry.scaffoldSize.height -
        scaffoldGeometry.floatingActionButtonSize.height -
        offsetFromBottom;

    return Offset(fabX, fabY);
  }
}
