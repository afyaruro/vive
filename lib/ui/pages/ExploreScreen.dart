import 'package:flutter/material.dart';
import 'package:vive/ui/components/otrosGrupos.dart';
import 'package:vive/ui/components/searchBar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

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
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl:
                  "https://open-stand.org/wp-content/uploads/2016/04/International-Union-of-Cinemas-Calls-for-Open-Standards-in-the-Cinema-Industry.jpg",
              title: "Aficionados del Cine",
              description:
                  "Comparte y debate sobre las últimas películas y series.",
              onJoin: () {
                print("Unirse al grupo: Aficionados del Cine");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl:
                  "https://elcomercio.pe/resizer/1UTbYI3hLAxZXI_CXdUvIfNzxa4=/1200x675/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/ICHXD7PQARGKFGDZC4CBOD4YI4.jpg",
              title: "Fotografía Creativa",
              description:
                  "Un grupo para aquellos que aman capturar momentos únicos.",
              onJoin: () {
                print("Unirse al grupo: Fotografía Creativa");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl: "https://i.blogs.es/aa76de/libro/450_1000.jpg",
              title: "Amantes de los Libros",
              description:
                  "Recomendaciones de lectura, clubes de libros y más.",
              onJoin: () {
                print("Unirse al grupo: Amantes de los Libros");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl: "https://via.placeholder.com/155",
              title: "Gaming Online",
              description:
                  "Todo lo relacionado con videojuegos, consolas y competencias online.",
              onJoin: () {
                print("Unirse al grupo: Gaming Online");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl: "https://via.placeholder.com/156",
              title: "Cocina Creativa",
              description:
                  "Recetas, tips y trucos para cocinar platos deliciosos.",
              onJoin: () {
                print("Unirse al grupo: Cocina Creativa");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl: "https://via.placeholder.com/157",
              title: "Hiking y Naturaleza",
              description:
                  "Organiza y comparte aventuras al aire libre y rutas de senderismo.",
              onJoin: () {
                print("Unirse al grupo: Hiking y Naturaleza");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl: "https://via.placeholder.com/158",
              title: "Música y Arte",
              description:
                  "Un grupo para músicos, artistas y amantes de la cultura.",
              onJoin: () {
                print("Unirse al grupo: Música y Arte");
              },
            ),
            OtrosGrupos(
              onViewGroup: () {},
              imageUrl: "https://via.placeholder.com/159",
              title: "Tecnología y Gadgets",
              description:
                  "Todo sobre los últimos avances en tecnología y gadgets.",
              onJoin: () {
                print("Unirse al grupo: Tecnología y Gadgets");
              },
            ),
          ],
        ),
      ),
    );
  }
}
