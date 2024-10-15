import 'dart:convert';
import 'package:crypto/crypto.dart';

class Usuario {
  final String correo;
  final String nombre;
  final String imageUrl;
  final String password;
  final String userId;

  Usuario({
    required this.correo,
    required this.nombre,
    required this.imageUrl,
    required this.password,
    required this.userId,
  });

  Map<String, dynamic> toJson() {
    return {
      'correo': correo,
      'nombre': nombre,
      'imageUrl': imageUrl,
      'password': password,
      'userId': userId,
    };
  }

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      correo: json['correo'],
      nombre: json['nombre'],
      imageUrl: json['imageUrl'],
      password: json['password'],
      userId: json['userId'],
    );
  }

  static String encryptPassword(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }
}
