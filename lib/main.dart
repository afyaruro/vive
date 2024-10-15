import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vive/app/myApp.dart';
import 'package:vive/config/firebase_options.dart';
import 'package:vive/infrastructure/controllers/controllerUser.dart';
 
void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Get.put(ControllerUser());

  runApp(const MyApp());

}

