import 'package:flutter/material.dart';

class CustomChatGrupo extends StatelessWidget {
  final String imagen;
  final String texto;
  final String hora;
  final String titulo;

  const CustomChatGrupo({
    Key? key,
    required this.imagen,
    required this.texto,
    required this.hora,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          // Imagen circular
          ClipOval(
            child: Image.network(
              imagen,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10), // Espacio entre la imagen y el texto
          // Column que ocupa todo el espacio restante
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row con texto a la izquierda y derecha
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Texto a la izquierda con limitación de longitud
                    Expanded(
                      child: Text(
                        titulo,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1, // Limita a una línea
                        overflow: TextOverflow.ellipsis, // Muestra "..." si es muy largo
                      ),
                    ),
                    const SizedBox(width: 8), // Espacio entre el título y la hora
                    // Texto a la derecha (hora)
                    Text(
                      hora,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8), // Espacio entre los elementos
                // Texto largo con "..." al final si es muy largo
                Text(
                  texto,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                  maxLines: 1, // Limita a una línea
                  overflow: TextOverflow.ellipsis, // Muestra "..." si el texto es largo
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
